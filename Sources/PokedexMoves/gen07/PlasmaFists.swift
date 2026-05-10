import Foundation

public extension PokemonMove {
    /// The Pokemon move known as プラズマフィスト in Japanese.
    ///
    /// The localized name of this move is `"Plasma Fists"` in English and
    /// `"プラズマフィスト"` in Japanese.
    ///
    /// The move's raw value is `"plasma-fists"`.
    static let plasmaFists = PlasmaFistsMove.move
}

enum PlasmaFistsMove {
    static let move = PokemonMove(rawValue: "plasma-fists")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 15,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Plasma Fists",
            .japanese: "プラズマフィスト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let plasmaFists = PlasmaFistsMove.definition
}
