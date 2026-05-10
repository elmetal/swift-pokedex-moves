import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほうでん in Japanese.
    ///
    /// The localized name of this move is `"Discharge"` in English and
    /// `"ほうでん"` in Japanese.
    ///
    /// The move's raw value is `"discharge"`.
    static let discharge = DischargeMove.move
}

enum DischargeMove {
    static let move = PokemonMove(rawValue: "discharge")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Discharge",
            .japanese: "ほうでん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let discharge = DischargeMove.definition
}
