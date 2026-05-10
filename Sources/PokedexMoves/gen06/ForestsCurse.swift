import Foundation

public extension PokemonMove {
    /// The Pokemon move known as もりののろい in Japanese.
    ///
    /// The localized name of this move is `"Forest’s Curse"` in English and
    /// `"もりののろい"` in Japanese.
    ///
    /// The move's raw value is `"forests-curse"`.
    static let forestsCurse = ForestsCurseMove.move
}

enum ForestsCurseMove {
    static let move = PokemonMove(rawValue: "forests-curse")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Forest’s Curse",
            .japanese: "もりののろい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let forestsCurse = ForestsCurseMove.definition
}
