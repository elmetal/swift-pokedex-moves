import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マッドショット in Japanese.
    ///
    /// The localized name of this move is `"Mud Shot"` in English and
    /// `"マッドショット"` in Japanese.
    ///
    /// The move's raw value is `"mud-shot"`.
    static let mudShot = MudShotMove.move
}

enum MudShotMove {
    static let move = PokemonMove(rawValue: "mud-shot")
    static let parameters1 = PokemonMove.Parameters(
        type: .ground,
        pp: 15,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ground,
        pp: 15,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Mud Shot",
            .japanese: "マッドショット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mudShot = MudShotMove.definition
}
