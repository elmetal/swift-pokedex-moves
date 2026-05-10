import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アシストパワー in Japanese.
    ///
    /// The localized name of this move is `"Stored Power"` in English and
    /// `"アシストパワー"` in Japanese.
    ///
    /// The move's raw value is `"stored-power"`.
    static let storedPower = StoredPowerMove.move
}

enum StoredPowerMove {
    static let move = PokemonMove(rawValue: "stored-power")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
            .init(
                versionGroups: [
                    .blackWhite,
                    .black2White2,
                    .xY,
                    .omegaRubyAlphaSapphire,
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
            .english: "Stored Power",
            .japanese: "アシストパワー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let storedPower = StoredPowerMove.definition
}
