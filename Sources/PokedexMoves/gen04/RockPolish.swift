import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ロックカット in Japanese.
    ///
    /// The localized name of this move is `"Rock Polish"` in English and
    /// `"ロックカット"` in Japanese.
    ///
    /// The move's raw value is `"rock-polish"`.
    static let rockPolish = RockPolishMove.move
}

enum RockPolishMove {
    static let move = PokemonMove(rawValue: "rock-polish")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 20,
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
            .english: "Rock Polish",
            .japanese: "ロックカット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockPolish = RockPolishMove.definition
}
