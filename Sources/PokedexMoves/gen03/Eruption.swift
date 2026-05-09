import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふんか in Japanese.
    ///
    /// The localized name of this move is `"Eruption"` in English and
    /// `"ふんか"` in Japanese.
    ///
    /// The move's raw value is `"eruption"`.
    static let eruption = EruptionMove.move
}

enum EruptionMove {
    static let move = PokemonMove(rawValue: "eruption")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Eruption",
            .japanese: "ふんか",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let eruption = EruptionMove.definition
}
