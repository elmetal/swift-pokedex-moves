import Foundation

public extension PokemonMove {
    /// The Pokemon move known as キングシールド in Japanese.
    ///
    /// The localized name of this move is `"King’s Shield"` in English and
    /// `"キングシールド"` in Japanese.
    ///
    /// The move's raw value is `"kings-shield"`.
    static let kingsShield = KingsShieldMove.move
}

enum KingsShieldMove {
    static let move = PokemonMove(rawValue: "kings-shield")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
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
            .english: "King’s Shield",
            .japanese: "キングシールド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let kingsShield = KingsShieldMove.definition
}
