import Foundation

public extension PokemonMove {
    /// The Pokemon move known as でんげきは in Japanese.
    ///
    /// The localized name of this move is `"Shock Wave"` in English and
    /// `"でんげきは"` in Japanese.
    ///
    /// The move's raw value is `"shock-wave"`.
    static let shockWave = ShockWaveMove.move
}

enum ShockWaveMove {
    static let move = PokemonMove(rawValue: "shock-wave")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .alwaysHits,
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
            .english: "Shock Wave",
            .japanese: "でんげきは",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shockWave = ShockWaveMove.definition
}
