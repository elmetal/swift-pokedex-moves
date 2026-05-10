import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はねやすめ in Japanese.
    ///
    /// The localized name of this move is `"Roost"` in English and
    /// `"はねやすめ"` in Japanese.
    ///
    /// The move's raw value is `"roost"`.
    static let roost = RoostMove.move
}

enum RoostMove {
    static let move = PokemonMove(rawValue: "roost")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Roost",
            .japanese: "はねやすめ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let roost = RoostMove.definition
}
