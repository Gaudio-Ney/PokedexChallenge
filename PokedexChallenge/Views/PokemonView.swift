import SwiftUI

struct PokemonView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: PokemonViewModel = PokemonViewModel()
    
    @State var showDetail: Bool = false

    private(set) var pokemonModel: Pokemon
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(pokemonModel.name.capitalized)
                .textInputAutocapitalization(.sentences)
                .font(.headline)
            HStack {
                Text(pokemonModel.url)
            }
            .frame(maxWidth: .infinity)
            
        }
        .sheet(isPresented: $showDetail, content: {
            if let pokemonDetailModel = viewModel.model {
                PokemonDetailView(pokemonDetail: pokemonDetailModel)
            }
        })
        .padding()
        .background(Color.white)
        .cornerRadius(13)
        .shadow(color: Color.gray, radius: 3, x: 0, y: 0)
        .onTapGesture {
            viewModel.requestPokemonSelected(with: pokemonModel.url)
            showDetail = true
        }
    }
}

