import Foundation

struct PokemonAPIResponse: Codable {
    let results: [Pokemon]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}

struct Pokemon: Codable, Identifiable {
    let id = UUID()
    let name: String
    let url: String
    
    enum CodingKeys: String, CodingKey{
        case name
        case url
    }
    
}
