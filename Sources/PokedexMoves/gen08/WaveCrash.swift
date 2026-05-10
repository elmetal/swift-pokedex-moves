import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ウェーブタックル in Japanese.
    ///
    /// The localized name of this move is `"Wave Crash"` in English and
    /// `"ウェーブタックル"` in Japanese.
    ///
    /// The move's raw value is `"wave-crash"`.
    static let waveCrash = WaveCrashMove.move
}

enum WaveCrashMove {
    static let move = PokemonMove(rawValue: "wave-crash")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Wave Crash",
            .japanese: "ウェーブタックル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waveCrash = WaveCrashMove.definition
}
