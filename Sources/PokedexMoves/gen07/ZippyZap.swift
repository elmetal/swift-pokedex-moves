import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ばちばちアクセル in Japanese.
    ///
    /// The localized name of this move is `"Zippy Zap"` in English and
    /// `"ばちばちアクセル"` in Japanese.
    ///
    /// The move's raw value is `"zippy-zap"`.
    static let zippyZap = ZippyZapMove.move
}

enum ZippyZapMove {
    static let move = PokemonMove(rawValue: "zippy-zap")
    static let parameters1 = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 2,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 2,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee],
                parameters: parameters1
            ),
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Zippy Zap",
            .japanese: "ばちばちアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let zippyZap = ZippyZapMove.definition
}
