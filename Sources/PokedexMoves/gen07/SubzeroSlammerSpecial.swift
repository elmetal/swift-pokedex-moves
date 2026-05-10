import Foundation

public extension PokemonMove {
    /// The Pokemon move known as レイジングジオフリーズ in Japanese.
    ///
    /// The localized name of this move is `"Subzero Slammer"` in English and
    /// `"レイジングジオフリーズ"` in Japanese.
    ///
    /// The move's raw value is `"subzero-slammer--special"`.
    static let subzeroSlammerSpecial = SubzeroSlammerSpecialMove.move
}

enum SubzeroSlammerSpecialMove {
    static let move = PokemonMove(rawValue: "subzero-slammer--special")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
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
            .english: "Subzero Slammer",
            .japanese: "レイジングジオフリーズ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let subzeroSlammerSpecial = SubzeroSlammerSpecialMove.definition
}
