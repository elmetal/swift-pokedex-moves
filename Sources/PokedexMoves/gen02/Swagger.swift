import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いばる in Japanese.
    ///
    /// The localized name of this move is `"Swagger"` in English and
    /// `"いばる"` in Japanese.
    ///
    /// The move's raw value is `"swagger"`.
    static let swagger = SwaggerMove.move
}

enum SwaggerMove {
    static let move = PokemonMove(rawValue: "swagger")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Swagger",
            .japanese: "いばる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let swagger = SwaggerMove.definition
}
