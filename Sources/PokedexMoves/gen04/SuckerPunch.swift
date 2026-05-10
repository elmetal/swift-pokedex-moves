import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふいうち in Japanese.
    ///
    /// The localized name of this move is `"Sucker Punch"` in English and
    /// `"ふいうち"` in Japanese.
    ///
    /// The move's raw value is `"sucker-punch"`.
    static let suckerPunch = SuckerPunchMove.move
}

enum SuckerPunchMove {
    static let move = PokemonMove(rawValue: "sucker-punch")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 5,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 5,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Sucker Punch",
            .japanese: "ふいうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let suckerPunch = SuckerPunchMove.definition
}
