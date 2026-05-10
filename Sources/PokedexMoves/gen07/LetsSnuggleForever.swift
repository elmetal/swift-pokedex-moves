import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぽかぼかフレンドタイム in Japanese.
    ///
    /// The localized name of this move is `"Let’s Snuggle Forever"` in English and
    /// `"ぽかぼかフレンドタイム"` in Japanese.
    ///
    /// The move's raw value is `"lets-snuggle-forever"`.
    static let letsSnuggleForever = LetsSnuggleForeverMove.move
}

enum LetsSnuggleForeverMove {
    static let move = PokemonMove(rawValue: "lets-snuggle-forever")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 1,
        power: .fixed(190),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Let’s Snuggle Forever",
            .japanese: "ぽかぼかフレンドタイム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let letsSnuggleForever = LetsSnuggleForeverMove.definition
}
