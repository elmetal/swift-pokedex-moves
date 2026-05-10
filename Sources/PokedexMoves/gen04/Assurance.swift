import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダメおし in Japanese.
    ///
    /// The localized name of this move is `"Assurance"` in English and
    /// `"ダメおし"` in Japanese.
    ///
    /// The move's raw value is `"assurance"`.
    static let assurance = AssuranceMove.move
}

enum AssuranceMove {
    static let move = PokemonMove(rawValue: "assurance")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Assurance",
            .japanese: "ダメおし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let assurance = AssuranceMove.definition
}
