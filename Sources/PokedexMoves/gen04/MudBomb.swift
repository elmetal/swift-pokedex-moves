import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どろばくだん in Japanese.
    ///
    /// The localized name of this move is `"Mud Bomb"` in English and
    /// `"どろばくだん"` in Japanese.
    ///
    /// The move's raw value is `"mud-bomb"`.
    static let mudBomb = MudBombMove.move
}

enum MudBombMove {
    static let move = PokemonMove(rawValue: "mud-bomb")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Mud Bomb",
            .japanese: "どろばくだん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mudBomb = MudBombMove.definition
}
