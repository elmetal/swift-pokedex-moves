import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テレキネシス in Japanese.
    ///
    /// The localized name of this move is `"Telekinesis"` in English and
    /// `"テレキネシス"` in Japanese.
    ///
    /// The move's raw value is `"telekinesis"`.
    static let telekinesis = TelekinesisMove.move
}

enum TelekinesisMove {
    static let move = PokemonMove(rawValue: "telekinesis")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Telekinesis",
            .japanese: "テレキネシス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let telekinesis = TelekinesisMove.definition
}
