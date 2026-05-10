import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ベノムトラップ in Japanese.
    ///
    /// The localized name of this move is `"Venom Drench"` in English and
    /// `"ベノムトラップ"` in Japanese.
    ///
    /// The move's raw value is `"venom-drench"`.
    static let venomDrench = VenomDrenchMove.move
}

enum VenomDrenchMove {
    static let move = PokemonMove(rawValue: "venom-drench")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Venom Drench",
            .japanese: "ベノムトラップ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let venomDrench = VenomDrenchMove.definition
}
