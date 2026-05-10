import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ルミナコリジョン in Japanese.
    ///
    /// The localized name of this move is `"Lumina Crash"` in English and
    /// `"ルミナコリジョン"` in Japanese.
    ///
    /// The move's raw value is `"lumina-crash"`.
    static let luminaCrash = LuminaCrashMove.move
}

enum LuminaCrashMove {
    static let move = PokemonMove(rawValue: "lumina-crash")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Lumina Crash",
            .japanese: "ルミナコリジョン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let luminaCrash = LuminaCrashMove.definition
}
