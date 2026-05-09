import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコブースト in Japanese.
    ///
    /// The localized name of this move is `"Psycho Boost"` in English and
    /// `"サイコブースト"` in Japanese.
    ///
    /// The move's raw value is `"psycho-boost"`.
    static let psychoBoost = PsychoBoostMove.move
}

enum PsychoBoostMove {
    static let move = PokemonMove(rawValue: "psycho-boost")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(140),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Psycho Boost",
            .japanese: "サイコブースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychoBoost = PsychoBoostMove.definition
}
