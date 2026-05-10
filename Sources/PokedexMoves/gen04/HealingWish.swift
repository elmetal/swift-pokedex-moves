import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いやしのねがい in Japanese.
    ///
    /// The localized name of this move is `"Healing Wish"` in English and
    /// `"いやしのねがい"` in Japanese.
    ///
    /// The move's raw value is `"healing-wish"`.
    static let healingWish = HealingWishMove.move
}

enum HealingWishMove {
    static let move = PokemonMove(rawValue: "healing-wish")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Healing Wish",
            .japanese: "いやしのねがい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let healingWish = HealingWishMove.definition
}
