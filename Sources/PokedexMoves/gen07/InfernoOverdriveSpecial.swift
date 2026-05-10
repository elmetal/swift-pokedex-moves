import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ダイナミックフルフレイム in Japanese.
    ///
    /// The localized name of this move is `"Inferno Overdrive"` in English and
    /// `"ダイナミックフルフレイム"` in Japanese.
    ///
    /// The move's raw value is `"inferno-overdrive--special"`.
    static let infernoOverdriveSpecial = InfernoOverdriveSpecialMove.move
}

enum InfernoOverdriveSpecialMove {
    static let move = PokemonMove(rawValue: "inferno-overdrive--special")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
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
            .english: "Inferno Overdrive",
            .japanese: "ダイナミックフルフレイム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let infernoOverdriveSpecial = InfernoOverdriveSpecialMove.definition
}
