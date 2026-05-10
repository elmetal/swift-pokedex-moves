import Foundation

public extension PokemonMove {
    /// The Pokemon move known as くさのちかい in Japanese.
    ///
    /// The localized name of this move is `"Grass Pledge"` in English and
    /// `"くさのちかい"` in Japanese.
    ///
    /// The move's raw value is `"grass-pledge"`.
    static let grassPledge = GrassPledgeMove.move
}

enum GrassPledgeMove {
    static let move = PokemonMove(rawValue: "grass-pledge")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
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
            .english: "Grass Pledge",
            .japanese: "くさのちかい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let grassPledge = GrassPledgeMove.definition
}
