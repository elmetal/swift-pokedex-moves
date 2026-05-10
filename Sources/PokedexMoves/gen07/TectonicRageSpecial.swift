import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ライジングランドオーバー in Japanese.
    ///
    /// The localized name of this move is `"Tectonic Rage"` in English and
    /// `"ライジングランドオーバー"` in Japanese.
    ///
    /// The move's raw value is `"tectonic-rage--special"`.
    static let tectonicRageSpecial = TectonicRageSpecialMove.move
}

enum TectonicRageSpecialMove {
    static let move = PokemonMove(rawValue: "tectonic-rage--special")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
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
            .english: "Tectonic Rage",
            .japanese: "ライジングランドオーバー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tectonicRageSpecial = TectonicRageSpecialMove.definition
}
