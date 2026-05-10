import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こおりのいぶき in Japanese.
    ///
    /// The localized name of this move is `"Frost Breath"` in English and
    /// `"こおりのいぶき"` in Japanese.
    ///
    /// The move's raw value is `"frost-breath"`.
    static let frostBreath = FrostBreathMove.move
}

enum FrostBreathMove {
    static let move = PokemonMove(rawValue: "frost-breath")
    static let parameters1 = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Frost Breath",
            .japanese: "こおりのいぶき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let frostBreath = FrostBreathMove.definition
}
