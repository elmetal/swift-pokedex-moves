import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ソーラーブレード in Japanese.
    ///
    /// The localized name of this move is `"Solar Blade"` in English and
    /// `"ソーラーブレード"` in Japanese.
    ///
    /// The move's raw value is `"solar-blade"`.
    static let solarBlade = SolarBladeMove.move
}

enum SolarBladeMove {
    static let move = PokemonMove(rawValue: "solar-blade")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(125),
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
            .english: "Solar Blade",
            .japanese: "ソーラーブレード",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let solarBlade = SolarBladeMove.definition
}
