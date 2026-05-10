import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フェイント in Japanese.
    ///
    /// The localized name of this move is `"Feint"` in English and
    /// `"フェイント"` in Japanese.
    ///
    /// The move's raw value is `"feint"`.
    static let feint = FeintMove.move
}

enum FeintMove {
    static let move = PokemonMove(rawValue: "feint")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 2,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(100),
        priority: 2,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
                    .sunMoon,
                    .ultraSunUltraMoon,
                    .letsGoPikachuLetsGoEevee,
                    .swordShield,
                    .brilliantDiamondShiningPearl,
                    .legendsArceus,
                    .scarletViolet,
                    .champions,
                ],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Feint",
            .japanese: "フェイント",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let feint = FeintMove.definition
}
