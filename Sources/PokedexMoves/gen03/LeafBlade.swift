import Foundation

public extension PokemonMove {
    /// The Pokemon move known as リーフブレード in Japanese.
    ///
    /// The localized name of this move is `"Leaf Blade"` in English and
    /// `"リーフブレード"` in Japanese.
    ///
    /// The move's raw value is `"leaf-blade"`.
    static let leafBlade = LeafBladeMove.move
}

enum LeafBladeMove {
    static let move = PokemonMove(rawValue: "leaf-blade")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Leaf Blade",
            .japanese: "リーフブレード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let leafBlade = LeafBladeMove.definition
}
