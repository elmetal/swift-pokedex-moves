import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こなゆき in Japanese.
    ///
    /// The localized name of this move is `"Powder Snow"` in English and
    /// `"こなゆき"` in Japanese.
    ///
    /// The move's raw value is `"powder-snow"`.
    static let powderSnow = PowderSnowMove.move
}

enum PowderSnowMove {
    static let move = PokemonMove(rawValue: "powder-snow")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 25,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Powder Snow",
            .japanese: "こなゆき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let powderSnow = PowderSnowMove.definition
}
