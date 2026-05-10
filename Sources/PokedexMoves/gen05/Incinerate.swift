import Foundation

public extension PokemonMove {
    /// The Pokemon move known as やきつくす in Japanese.
    ///
    /// The localized name of this move is `"Incinerate"` in English and
    /// `"やきつくす"` in Japanese.
    ///
    /// The move's raw value is `"incinerate"`.
    static let incinerate = IncinerateMove.move
}

enum IncinerateMove {
    static let move = PokemonMove(rawValue: "incinerate")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(30),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(60),
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
            .english: "Incinerate",
            .japanese: "やきつくす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let incinerate = IncinerateMove.definition
}
