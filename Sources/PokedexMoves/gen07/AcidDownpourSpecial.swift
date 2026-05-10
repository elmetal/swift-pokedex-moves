import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アシッドポイズンデリート in Japanese.
    ///
    /// The localized name of this move is `"Acid Downpour"` in English and
    /// `"アシッドポイズンデリート"` in Japanese.
    ///
    /// The move's raw value is `"acid-downpour--special"`.
    static let acidDownpourSpecial = AcidDownpourSpecialMove.move
}

enum AcidDownpourSpecialMove {
    static let move = PokemonMove(rawValue: "acid-downpour--special")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 1,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
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
            .english: "Acid Downpour",
            .japanese: "アシッドポイズンデリート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let acidDownpourSpecial = AcidDownpourSpecialMove.definition
}
