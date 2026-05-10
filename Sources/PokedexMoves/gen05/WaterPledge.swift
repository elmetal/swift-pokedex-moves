import Foundation

public extension PokemonMove {
    /// The Pokemon move known as みずのちかい in Japanese.
    ///
    /// The localized name of this move is `"Water Pledge"` in English and
    /// `"みずのちかい"` in Japanese.
    ///
    /// The move's raw value is `"water-pledge"`.
    static let waterPledge = WaterPledgeMove.move
}

enum WaterPledgeMove {
    static let move = PokemonMove(rawValue: "water-pledge")
    static let parameters1 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [.blackWhite, .black2White2],
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
            .english: "Water Pledge",
            .japanese: "みずのちかい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let waterPledge = WaterPledgeMove.definition
}
