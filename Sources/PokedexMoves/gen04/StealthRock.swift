import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ステルスロック in Japanese.
    ///
    /// The localized name of this move is `"Stealth Rock"` in English and
    /// `"ステルスロック"` in Japanese.
    ///
    /// The move's raw value is `"stealth-rock"`.
    static let stealthRock = StealthRockMove.move
}

enum StealthRockMove {
    static let move = PokemonMove(rawValue: "stealth-rock")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .opposingSide
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
                    .sunMoon,
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
            .english: "Stealth Rock",
            .japanese: "ステルスロック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stealthRock = StealthRockMove.definition
}
