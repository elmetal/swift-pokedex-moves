import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しめつける in Japanese.
    ///
    /// The localized name of this move is `"Bind"` in English and
    /// `"しめつける"` in Japanese.
    ///
    /// The move's raw value is `"bind"`.
    static let bind = BindMove.move
}

enum BindMove {
    static let move = PokemonMove(rawValue: "bind")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(15),
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(15),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
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
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Bind",
            .japanese: "しめつける",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let bind = BindMove.definition
}
