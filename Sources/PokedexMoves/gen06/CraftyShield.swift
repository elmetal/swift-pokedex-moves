import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリックガード in Japanese.
    ///
    /// The localized name of this move is `"Crafty Shield"` in English and
    /// `"トリックガード"` in Japanese.
    ///
    /// The move's raw value is `"crafty-shield"`.
    static let craftyShield = CraftyShieldMove.move
}

enum CraftyShieldMove {
    static let move = PokemonMove(rawValue: "crafty-shield")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 3,
        category: .status,
        target: .usersSide
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
            .english: "Crafty Shield",
            .japanese: "トリックガード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let craftyShield = CraftyShieldMove.definition
}
