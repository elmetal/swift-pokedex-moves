import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かえんほうしゃ in Japanese.
    ///
    /// The localized name of this move is `"Flamethrower"` in English and
    /// `"かえんほうしゃ"` in Japanese.
    ///
    /// The move's raw value is `"flamethrower"`.
    static let flamethrower = FlamethrowerMove.move
}

enum FlamethrowerMove {
    static let move = PokemonMove(rawValue: "flamethrower")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Flamethrower",
            .japanese: "かえんほうしゃ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flamethrower = FlamethrowerMove.definition
}
