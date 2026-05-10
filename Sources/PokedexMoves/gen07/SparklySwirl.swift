import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きらきらストーム in Japanese.
    ///
    /// The localized name of this move is `"Sparkly Swirl"` in English and
    /// `"きらきらストーム"` in Japanese.
    ///
    /// The move's raw value is `"sparkly-swirl"`.
    static let sparklySwirl = SparklySwirlMove.move
}

enum SparklySwirlMove {
    static let move = PokemonMove(rawValue: "sparkly-swirl")
    static let parameters1 = PokemonMove.Parameters(
        type: .fairy,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fairy,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
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
            .english: "Sparkly Swirl",
            .japanese: "きらきらストーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sparklySwirl = SparklySwirlMove.definition
}
