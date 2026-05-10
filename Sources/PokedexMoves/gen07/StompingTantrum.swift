import Foundation

public extension PokemonMove {
    /// The Pokemon move known as じだんだ in Japanese.
    ///
    /// The localized name of this move is `"Stomping Tantrum"` in English and
    /// `"じだんだ"` in Japanese.
    ///
    /// The move's raw value is `"stomping-tantrum"`.
    static let stompingTantrum = StompingTantrumMove.move
}

enum StompingTantrumMove {
    static let move = PokemonMove(rawValue: "stomping-tantrum")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Stomping Tantrum",
            .japanese: "じだんだ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stompingTantrum = StompingTantrumMove.definition
}
