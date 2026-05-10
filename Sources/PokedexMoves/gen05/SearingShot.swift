import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かえんだん in Japanese.
    ///
    /// The localized name of this move is `"Searing Shot"` in English and
    /// `"かえんだん"` in Japanese.
    ///
    /// The move's raw value is `"searing-shot"`.
    static let searingShot = SearingShotMove.move
}

enum SearingShotMove {
    static let move = PokemonMove(rawValue: "searing-shot")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Searing Shot",
            .japanese: "かえんだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let searingShot = SearingShotMove.definition
}
