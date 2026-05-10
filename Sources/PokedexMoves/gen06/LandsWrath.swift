import Foundation

public extension PokemonMove {
    /// The Pokemon move known as グランドフォース in Japanese.
    ///
    /// The localized name of this move is `"Land’s Wrath"` in English and
    /// `"グランドフォース"` in Japanese.
    ///
    /// The move's raw value is `"lands-wrath"`.
    static let landsWrath = LandsWrathMove.move
}

enum LandsWrathMove {
    static let move = PokemonMove(rawValue: "lands-wrath")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Land’s Wrath",
            .japanese: "グランドフォース",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let landsWrath = LandsWrathMove.definition
}
