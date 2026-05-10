import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ライジングランドオーバー in Japanese.
    ///
    /// The localized name of this move is `"Tectonic Rage"` in English and
    /// `"ライジングランドオーバー"` in Japanese.
    ///
    /// The move's raw value is `"tectonic-rage--physical"`.
    static let tectonicRagePhysical = TectonicRagePhysicalMove.move
}

enum TectonicRagePhysicalMove {
    static let move = PokemonMove(rawValue: "tectonic-rage--physical")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
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
            .english: "Tectonic Rage",
            .japanese: "ライジングランドオーバー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tectonicRagePhysical = TectonicRagePhysicalMove.definition
}
