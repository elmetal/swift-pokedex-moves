import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シンプルビーム in Japanese.
    ///
    /// The localized name of this move is `"Simple Beam"` in English and
    /// `"シンプルビーム"` in Japanese.
    ///
    /// The move's raw value is `"simple-beam"`.
    static let simpleBeam = SimpleBeamMove.move
}

enum SimpleBeamMove {
    static let move = PokemonMove(rawValue: "simple-beam")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Simple Beam",
            .japanese: "シンプルビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let simpleBeam = SimpleBeamMove.definition
}
