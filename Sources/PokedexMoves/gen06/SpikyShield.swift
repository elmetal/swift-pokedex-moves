import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ニードルガード in Japanese.
    ///
    /// The localized name of this move is `"Spiky Shield"` in English and
    /// `"ニードルガード"` in Japanese.
    ///
    /// The move's raw value is `"spiky-shield"`.
    static let spikyShield = SpikyShieldMove.move
}

enum SpikyShieldMove {
    static let move = PokemonMove(rawValue: "spiky-shield")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Spiky Shield",
            .japanese: "ニードルガード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spikyShield = SpikyShieldMove.definition
}
