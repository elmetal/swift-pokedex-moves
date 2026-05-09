import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ふぶき in Japanese.
    ///
    /// The localized name of this move is `"Blizzard"` in English and
    /// `"ふぶき"` in Japanese.
    ///
    /// The move's raw value is `"blizzard"`.
    static let blizzard = BlizzardMove.move
}

enum BlizzardMove {
    static let move = PokemonMove(rawValue: "blizzard")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
        pp: 5,
        power: .fixed(110),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Blizzard",
            .japanese: "ふぶき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let blizzard = BlizzardMove.definition
}
