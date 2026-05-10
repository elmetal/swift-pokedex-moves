import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いかりのこな in Japanese.
    ///
    /// The localized name of this move is `"Rage Powder"` in English and
    /// `"いかりのこな"` in Japanese.
    ///
    /// The move's raw value is `"rage-powder"`.
    static let ragePowder = RagePowderMove.move
}

enum RagePowderMove {
    static let move = PokemonMove(rawValue: "rage-powder")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 2,
        category: .status,
        target: .user
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
            .english: "Rage Powder",
            .japanese: "いかりのこな",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ragePowder = RagePowderMove.definition
}
