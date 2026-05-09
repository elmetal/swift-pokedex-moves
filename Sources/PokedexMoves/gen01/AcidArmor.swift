import Foundation

public extension PokemonMove {
    /// The Pokemon move known as とける in Japanese.
    ///
    /// The localized name of this move is `"Acid Armor"` in English and
    /// `"とける"` in Japanese.
    ///
    /// The move's raw value is `"acid-armor"`.
    static let acidArmor = AcidArmorMove.move
}

enum AcidArmorMove {
    static let move = PokemonMove(rawValue: "acid-armor")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
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
            .english: "Acid Armor",
            .japanese: "とける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let acidArmor = AcidArmorMove.definition
}
