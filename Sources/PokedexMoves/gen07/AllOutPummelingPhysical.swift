import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぜんりょくむそうげきれつけん in Japanese.
    ///
    /// The localized name of this move is `"All-Out Pummeling"` in English and
    /// `"ぜんりょくむそうげきれつけん"` in Japanese.
    ///
    /// The move's raw value is `"all-out-pummeling--physical"`.
    static let allOutPummelingPhysical = AllOutPummelingPhysicalMove.move
}

enum AllOutPummelingPhysicalMove {
    static let move = PokemonMove(rawValue: "all-out-pummeling--physical")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
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
            .english: "All-Out Pummeling",
            .japanese: "ぜんりょくむそうげきれつけん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let allOutPummelingPhysical = AllOutPummelingPhysicalMove.definition
}
