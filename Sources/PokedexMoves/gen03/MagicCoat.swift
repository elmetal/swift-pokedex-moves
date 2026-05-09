import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マジックコート in Japanese.
    ///
    /// The localized name of this move is `"Magic Coat"` in English and
    /// `"マジックコート"` in Japanese.
    ///
    /// The move's raw value is `"magic-coat"`.
    static let magicCoat = MagicCoatMove.move
}

enum MagicCoatMove {
    static let move = PokemonMove(rawValue: "magic-coat")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Magic Coat",
            .japanese: "マジックコート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let magicCoat = MagicCoatMove.definition
}
