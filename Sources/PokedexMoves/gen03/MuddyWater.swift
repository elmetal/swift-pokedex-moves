import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だくりゅう in Japanese.
    ///
    /// The localized name of this move is `"Muddy Water"` in English and
    /// `"だくりゅう"` in Japanese.
    ///
    /// The move's raw value is `"muddy-water"`.
    static let muddyWater = MuddyWaterMove.move
}

enum MuddyWaterMove {
    static let move = PokemonMove(rawValue: "muddy-water")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Muddy Water",
            .japanese: "だくりゅう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let muddyWater = MuddyWaterMove.definition
}
