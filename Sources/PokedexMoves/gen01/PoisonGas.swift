import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくガス in Japanese.
    ///
    /// The localized name of this move is `"Poison Gas"` in English and
    /// `"どくガス"` in Japanese.
    ///
    /// The move's raw value is `"poison-gas"`.
    static let poisonGas = PoisonGasMove.move
}

enum PoisonGasMove {
    static let move = PokemonMove(rawValue: "poison-gas")
    static let parameters1 = PokemonMove.Parameters(
        type: .poison,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .poison,
        pp: 40,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .status,
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
            .english: "Poison Gas",
            .japanese: "どくガス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poisonGas = PoisonGasMove.definition
}
