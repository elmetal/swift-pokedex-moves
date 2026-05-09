import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すなじごく in Japanese.
    ///
    /// The localized name of this move is `"Sand Tomb"` in English and
    /// `"すなじごく"` in Japanese.
    ///
    /// The move's raw value is `"sand-tomb"`.
    static let sandTomb = SandTombMove.move
}

enum SandTombMove {
    static let move = PokemonMove(rawValue: "sand-tomb")
    static let parameters1 = PokemonMove.Parameters(
        type: .ground,
        pp: 15,
        power: .fixed(15),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ground,
        pp: 15,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(85),
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
            .english: "Sand Tomb",
            .japanese: "すなじごく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sandTomb = SandTombMove.definition
}
