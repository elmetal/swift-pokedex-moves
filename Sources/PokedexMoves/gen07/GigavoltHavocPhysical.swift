import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スパーキングギガボルト in Japanese.
    ///
    /// The localized name of this move is `"Gigavolt Havoc"` in English and
    /// `"スパーキングギガボルト"` in Japanese.
    ///
    /// The move's raw value is `"gigavolt-havoc--physical"`.
    static let gigavoltHavocPhysical = GigavoltHavocPhysicalMove.move
}

enum GigavoltHavocPhysicalMove {
    static let move = PokemonMove(rawValue: "gigavolt-havoc--physical")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
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
            .english: "Gigavolt Havoc",
            .japanese: "スパーキングギガボルト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gigavoltHavocPhysical = GigavoltHavocPhysicalMove.definition
}
