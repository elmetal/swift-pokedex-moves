import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じばく in Japanese.
    ///
    /// The localized name of this move is `"Self-Destruct"` in English and
    /// `"じばく"` in Japanese.
    ///
    /// The move's raw value is `"self-destruct"`.
    static let selfDestruct = SelfDestructMove.move
}

enum SelfDestructMove {
    static let move = PokemonMove(rawValue: "self-destruct")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(200),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
                ],
                parameters: parameters1
            ),
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
            .english: "Self-Destruct",
            .japanese: "じばく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let selfDestruct = SelfDestructMove.definition
}
