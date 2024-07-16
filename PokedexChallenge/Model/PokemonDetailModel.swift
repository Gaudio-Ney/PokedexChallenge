import Foundation

// MARK: - PokemonDetailModel
struct PokemonDetailModel: Codable {
    let baseExperience: Int
    let height: Float
    let id: Int
    let name: String
    let sprites: Sprite
    let types: [PokeType]
    
    enum CodingKeys: String, CodingKey {
        case baseExperience = "base_experience"
        case height, id, name, sprites, types
    }
}

// MARK: - Sprite (IMAGES)
struct Sprite: Codable {
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String?
    let frontShiny: String?
    let frontShinyFemale: String?

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
}

// MARK: - PokeType
struct PokeType: Codable {
    let slot: Int
    let type: StringType
}

// MARK: - TypeString
struct StringType: Codable {
    let name: EnumTypes
}

// MARK: - EnumTypes
enum EnumTypes: String, Codable {
    case normal = "normal"
    case fighting = "fighting"
    case flying = "flying"
    case poison = "poison"
    case ground = "ground"
    case rock = "rock"
    case bug = "bug"
    case ghost = "ghost"
    case steel = "steel"
    case fire = "fire"
    case water = "water"
    case grass = "grass"
    case eletric = "eletric"
    case psychic = "psychic"
    case ice = "ice"
    case dragon = "dragon"
    case dark = "dark"
    case fairy = "fairy"
}
