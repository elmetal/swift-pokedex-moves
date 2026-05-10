import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワールズエンドフォール in Japanese.
    ///
    /// The localized name of this move is `"Continental Crush"` in English and
    /// `"ワールズエンドフォール"` in Japanese.
    ///
    /// The move's raw value is `"continental-crush--physical"`.
    static let continentalCrushPhysical = ContinentalCrushPhysicalMove.move
}

enum ContinentalCrushPhysicalMove {
    static let move = PokemonMove(rawValue: "continental-crush--physical")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
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
            .english: "Continental Crush",
            .japanese: "ワールズエンドフォール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let continentalCrushPhysical = ContinentalCrushPhysicalMove.definition
}
