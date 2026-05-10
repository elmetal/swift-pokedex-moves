import Foundation

public extension PokemonMove {
    /// The Pokemon move known as うちおとす in Japanese.
    ///
    /// The localized name of this move is `"Smack Down"` in English and
    /// `"うちおとす"` in Japanese.
    ///
    /// The move's raw value is `"smack-down"`.
    static let smackDown = SmackDownMove.move
}

enum SmackDownMove {
    static let move = PokemonMove(rawValue: "smack-down")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 15,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
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
            .english: "Smack Down",
            .japanese: "うちおとす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let smackDown = SmackDownMove.definition
}
