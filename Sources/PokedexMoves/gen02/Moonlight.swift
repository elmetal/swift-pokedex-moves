import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つきのひかり in Japanese.
    ///
    /// The localized name of this move is `"Moonlight"` in English and
    /// `"つきのひかり"` in Japanese.
    ///
    /// The move's raw value is `"moonlight"`.
    static let moonlight = MoonlightMove.move
}

enum MoonlightMove {
    static let move = PokemonMove(rawValue: "moonlight")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fairy,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Moonlight",
            .japanese: "つきのひかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let moonlight = MoonlightMove.definition
}
