import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エアカッター in Japanese.
    ///
    /// The localized name of this move is `"Air Cutter"` in English and
    /// `"エアカッター"` in Japanese.
    ///
    /// The move's raw value is `"air-cutter"`.
    static let airCutter = AirCutterMove.move
}

enum AirCutterMove {
    static let move = PokemonMove(rawValue: "air-cutter")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 25,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 25,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .flying,
        pp: 25,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Air Cutter",
            .japanese: "エアカッター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let airCutter = AirCutterMove.definition
}
