import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぜったいほしょくかいてんざん in Japanese.
    ///
    /// The localized name of this move is `"Savage Spin-Out"` in English and
    /// `"ぜったいほしょくかいてんざん"` in Japanese.
    ///
    /// The move's raw value is `"savage-spin-out--special"`.
    static let savageSpinOutSpecial = SavageSpinOutSpecialMove.move
}

enum SavageSpinOutSpecialMove {
    static let move = PokemonMove(rawValue: "savage-spin-out--special")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
            .english: "Savage Spin-Out",
            .japanese: "ぜったいほしょくかいてんざん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let savageSpinOutSpecial = SavageSpinOutSpecialMove.definition
}
