import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フラワーガード in Japanese.
    ///
    /// The localized name of this move is `"Flower Shield"` in English and
    /// `"フラワーガード"` in Japanese.
    ///
    /// The move's raw value is `"flower-shield"`.
    static let flowerShield = FlowerShieldMove.move
}

enum FlowerShieldMove {
    static let move = PokemonMove(rawValue: "flower-shield")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .allPokemon
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
            .english: "Flower Shield",
            .japanese: "フラワーガード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flowerShield = FlowerShieldMove.definition
}
