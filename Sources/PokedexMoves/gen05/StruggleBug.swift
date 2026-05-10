import Foundation

public extension PokemonMove {
    /// The Pokemon move known as むしのていこう in Japanese.
    ///
    /// The localized name of this move is `"Struggle Bug"` in English and
    /// `"むしのていこう"` in Japanese.
    ///
    /// The move's raw value is `"struggle-bug"`.
    static let struggleBug = StruggleBugMove.move
}

enum StruggleBugMove {
    static let move = PokemonMove(rawValue: "struggle-bug")
    static let parameters1 = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .bug,
        pp: 20,
        power: .fixed(50),
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
            .english: "Struggle Bug",
            .japanese: "むしのていこう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let struggleBug = StruggleBugMove.definition
}
