//
//  PokedexAPIService.swift
//  PokedexChallenge
//
//  Created by Gáudio Ney on 08/03/22.
//

import Foundation

class PokedexAPIService {
    
    // MARK: - Properties
    
    static let shared: PokedexAPIService = PokedexAPIService()
    
    private let pokemonsFirst50URL = Constants.ProductionServer.BASE_URL + "pokemon?limit=1000&offset=0"
        
    private enum NetworkError: LocalizedError {
        case urlError
        case notFound
        case badRequest
        case serverError
        case noDataError
        case unknownError
        
        var errorDescription: String {
            switch self {
            case .urlError:
                return "Não foi possível criar o objeto URL a partir da string fornecida."
            case .notFound:
                return "Erro 404, serviço não encontrado."
            case .badRequest:
                return "Erro ao enviar os dados para o Servidor."
            case .serverError:
                return "Erro Interno do Servidor."
            case .noDataError:
                return "Nenhum dado enviado pelo Servidor."
            case .unknownError:
                return "Algo de errado aconteceu."
            }
        }
    }
    
    private let urlSession: URLSession = URLSession(configuration: .default)
    
    // MARK: - API Calls Methods
    
    func request(urlString: String, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NetworkError.urlError))
            return
        }
        
        urlSession.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            if let response = response as? HTTPURLResponse, let error = self.handle(statusCode: response.statusCode) {
                completion(.failure(error))
            }
            
            if let data = data {
                completion(.success(data))
            }
            else {
                completion(.failure(NetworkError.noDataError))
            }
        }.resume()
    }
    
    func getPokemons(completion: @escaping (Result<[Pokemon]?, Error>) -> Void) {
        self.request(urlString: pokemonsFirst50URL) { result in
            switch result {
            case .success(let data):
                do {
                    let response = try JSONDecoder().decode(PokemonAPIResponse.self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(response.results))
                    }
                }
                catch {
                    DispatchQueue.main.async {
                        completion(.failure(NetworkError.urlError))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    // MARK: - Private Functions
    
    private func handle(statusCode: Int) -> NetworkError? {
        switch statusCode {
        case 200...299:
            return nil
        case 300...399:
            return nil
        case 400...499:
            return .badRequest
        case 404:
            return .notFound
        case 500...599:
            return .serverError
        default:
            return .unknownError
        }
    }
}
