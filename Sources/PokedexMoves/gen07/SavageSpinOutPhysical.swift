import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ぜったいほしょくかいてんざん in Japanese.
    ///
    /// The localized name of this move is `"Savage Spin-Out"` in English and
    /// `"ぜったいほしょくかいてんざん"` in Japanese.
    ///
    /// The move's raw value is `"savage-spin-out--physical"`.
    static let savageSpinOutPhysical = SavageSpinOutPhysicalMove.move
}

enum SavageSpinOutPhysicalMove {
    static let move = PokemonMove(rawValue: "savage-spin-out--physical")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
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
            .english: "Savage Spin-Out",
            .japanese: "ぜったいほしょくかいてんざん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let savageSpinOutPhysical = SavageSpinOutPhysicalMove.definition
}
