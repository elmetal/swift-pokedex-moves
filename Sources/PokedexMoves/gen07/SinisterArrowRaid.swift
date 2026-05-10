import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドーアローズストライク in Japanese.
    ///
    /// The localized name of this move is `"Sinister Arrow Raid"` in English and
    /// `"シャドーアローズストライク"` in Japanese.
    ///
    /// The move's raw value is `"sinister-arrow-raid"`.
    static let sinisterArrowRaid = SinisterArrowRaidMove.move
}

enum SinisterArrowRaidMove {
    static let move = PokemonMove(rawValue: "sinister-arrow-raid")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 1,
        power: .fixed(180),
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
            .english: "Sinister Arrow Raid",
            .japanese: "シャドーアローズストライク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sinisterArrowRaid = SinisterArrowRaidMove.definition
}
