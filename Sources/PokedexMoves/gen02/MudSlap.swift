import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どろかけ in Japanese.
    ///
    /// The localized name of this move is `"Mud-Slap"` in English and
    /// `"どろかけ"` in Japanese.
    ///
    /// The move's raw value is `"mud-slap"`.
    static let mudSlap = MudSlapMove.move
}

enum MudSlapMove {
    static let move = PokemonMove(rawValue: "mud-slap")
    static let parameters1 = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
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
            .english: "Mud-Slap",
            .japanese: "どろかけ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mudSlap = MudSlapMove.definition
}
