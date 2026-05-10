import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ちからをすいとる in Japanese.
    ///
    /// The localized name of this move is `"Strength Sap"` in English and
    /// `"ちからをすいとる"` in Japanese.
    ///
    /// The move's raw value is `"strength-sap"`.
    static let strengthSap = StrengthSapMove.move
}

enum StrengthSapMove {
    static let move = PokemonMove(rawValue: "strength-sap")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
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
            .english: "Strength Sap",
            .japanese: "ちからをすいとる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let strengthSap = StrengthSapMove.definition
}
