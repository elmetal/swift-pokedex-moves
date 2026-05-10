import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぶんまわす in Japanese.
    ///
    /// The localized name of this move is `"Brutal Swing"` in English and
    /// `"ぶんまわす"` in Japanese.
    ///
    /// The move's raw value is `"brutal-swing"`.
    static let brutalSwing = BrutalSwingMove.move
}

enum BrutalSwingMove {
    static let move = PokemonMove(rawValue: "brutal-swing")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Brutal Swing",
            .japanese: "ぶんまわす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let brutalSwing = BrutalSwingMove.definition
}
