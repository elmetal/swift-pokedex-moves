import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なみのり in Japanese.
    ///
    /// The localized name of this move is `"Surf"` in English and
    /// `"なみのり"` in Japanese.
    ///
    /// The move's raw value is `"surf"`.
    static let surf = SurfMove.move
}

enum SurfMove {
    static let move = PokemonMove(rawValue: "surf")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
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
            .english: "Surf",
            .japanese: "なみのり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let surf = SurfMove.definition
}
