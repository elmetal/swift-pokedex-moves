import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スケイルショット in Japanese.
    ///
    /// The localized name of this move is `"Scale Shot"` in English and
    /// `"スケイルショット"` in Japanese.
    ///
    /// The move's raw value is `"scale-shot"`.
    static let scaleShot = ScaleShotMove.move
}

enum ScaleShotMove {
    static let move = PokemonMove(rawValue: "scale-shot")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 20,
        power: .fixed(25),
        hits: .range(2...5),
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Scale Shot",
            .japanese: "スケイルショット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let scaleShot = ScaleShotMove.definition
}
