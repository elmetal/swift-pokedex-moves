import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つるぎのまい in Japanese.
    ///
    /// The localized name of this move is `"Swords Dance"` in English and
    /// `"つるぎのまい"` in Japanese.
    ///
    /// The move's raw value is `"swords-dance"`.
    static let swordsDance = SwordsDanceMove.move
}

enum SwordsDanceMove {
    static let move = PokemonMove(rawValue: "swords-dance")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
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
            .english: "Swords Dance",
            .japanese: "つるぎのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let swordsDance = SwordsDanceMove.definition
}
