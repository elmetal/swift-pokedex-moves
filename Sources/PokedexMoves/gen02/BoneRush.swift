import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ボーンラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Bone Rush"` in English and
    /// `"ボーンラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"bone-rush"`.
    static let boneRush = BoneRushMove.move
}

enum BoneRushMove {
    static let move = PokemonMove(rawValue: "bone-rush")
    static let parameters1 = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(25),
        hits: .range(2...5),
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(25),
        hits: .range(2...5),
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
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
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Bone Rush",
            .japanese: "ボーンラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let boneRush = BoneRushMove.definition
}
