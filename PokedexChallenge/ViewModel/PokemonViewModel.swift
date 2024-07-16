import Foundation

final class PokemonViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var model: PokemonDetailModel?
    
    // MARK: - Helper Methods
    func requestPokemonSelected(with url: String) {
        PokedexAPIService.shared.getPokemonDetail(with: url) { [weak self] result in
            switch result {
            case .failure(let error):
                print("ERROR: \(error.localizedDescription)")
            case .success(let data):
                self?.model = data
            }
        }
    }
}
