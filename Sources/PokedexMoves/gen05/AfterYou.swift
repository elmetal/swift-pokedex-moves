import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おさきにどうぞ in Japanese.
    ///
    /// The localized name of this move is `"After You"` in English and
    /// `"おさきにどうぞ"` in Japanese.
    ///
    /// The move's raw value is `"after-you"`.
    static let afterYou = AfterYouMove.move
}

enum AfterYouMove {
    static let move = PokemonMove(rawValue: "after-you")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "After You",
            .japanese: "おさきにどうぞ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let afterYou = AfterYouMove.definition
}
