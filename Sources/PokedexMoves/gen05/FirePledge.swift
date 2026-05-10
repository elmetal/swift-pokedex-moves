import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほのおのちかい in Japanese.
    ///
    /// The localized name of this move is `"Fire Pledge"` in English and
    /// `"ほのおのちかい"` in Japanese.
    ///
    /// The move's raw value is `"fire-pledge"`.
    static let firePledge = FirePledgeMove.move
}

enum FirePledgeMove {
    static let move = PokemonMove(rawValue: "fire-pledge")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
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
            .english: "Fire Pledge",
            .japanese: "ほのおのちかい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let firePledge = FirePledgeMove.definition
}
