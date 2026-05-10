import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いにしえのうた in Japanese.
    ///
    /// The localized name of this move is `"Relic Song"` in English and
    /// `"いにしえのうた"` in Japanese.
    ///
    /// The move's raw value is `"relic-song"`.
    static let relicSong = RelicSongMove.move
}

enum RelicSongMove {
    static let move = PokemonMove(rawValue: "relic-song")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Relic Song",
            .japanese: "いにしえのうた",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let relicSong = RelicSongMove.definition
}
