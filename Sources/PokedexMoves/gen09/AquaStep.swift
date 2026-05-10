import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクアステップ in Japanese.
    ///
    /// The localized name of this move is `"Aqua Step"` in English and
    /// `"アクアステップ"` in Japanese.
    ///
    /// The move's raw value is `"aqua-step"`.
    static let aquaStep = AquaStepMove.move
}

enum AquaStepMove {
    static let move = PokemonMove(rawValue: "aqua-step")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Aqua Step",
            .japanese: "アクアステップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aquaStep = AquaStepMove.definition
}
