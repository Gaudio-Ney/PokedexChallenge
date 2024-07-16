import Foundation

final class PokedexViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var pokemons: [Pokemon] = []
    
}
