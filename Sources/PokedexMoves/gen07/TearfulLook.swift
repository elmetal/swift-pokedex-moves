import Foundation

public extension PokemonMove {
    /// The Pokemon move known as なみだめ in Japanese.
    ///
    /// The localized name of this move is `"Tearful Look"` in English and
    /// `"なみだめ"` in Japanese.
    ///
    /// The move's raw value is `"tearful-look"`.
    static let tearfulLook = TearfulLookMove.move
}

enum TearfulLookMove {
    static let move = PokemonMove(rawValue: "tearful-look")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
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
            .english: "Tearful Look",
            .japanese: "なみだめ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tearfulLook = TearfulLookMove.definition
}
