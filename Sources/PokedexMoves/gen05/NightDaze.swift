import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ナイトバースト in Japanese.
    ///
    /// The localized name of this move is `"Night Daze"` in English and
    /// `"ナイトバースト"` in Japanese.
    ///
    /// The move's raw value is `"night-daze"`.
    static let nightDaze = NightDazeMove.move
}

enum NightDazeMove {
    static let move = PokemonMove(rawValue: "night-daze")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
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
            .english: "Night Daze",
            .japanese: "ナイトバースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nightDaze = NightDazeMove.definition
}
