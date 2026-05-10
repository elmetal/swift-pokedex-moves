import Foundation

public extension PokemonMove {
    /// The Pokemon move known as もえつきる in Japanese.
    ///
    /// The localized name of this move is `"Burn Up"` in English and
    /// `"もえつきる"` in Japanese.
    ///
    /// The move's raw value is `"burn-up"`.
    static let burnUp = BurnUpMove.move
}

enum BurnUpMove {
    static let move = PokemonMove(rawValue: "burn-up")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(130),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Burn Up",
            .japanese: "もえつきる",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let burnUp = BurnUpMove.definition
}
