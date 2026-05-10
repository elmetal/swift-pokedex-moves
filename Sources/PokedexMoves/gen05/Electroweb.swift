import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エレキネット in Japanese.
    ///
    /// The localized name of this move is `"Electroweb"` in English and
    /// `"エレキネット"` in Japanese.
    ///
    /// The move's raw value is `"electroweb"`.
    static let electroweb = ElectrowebMove.move
}

enum ElectrowebMove {
    static let move = PokemonMove(rawValue: "electroweb")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(95),
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
            .english: "Electroweb",
            .japanese: "エレキネット",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let electroweb = ElectrowebMove.definition
}
