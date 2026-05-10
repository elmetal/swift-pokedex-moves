import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オーロラベール in Japanese.
    ///
    /// The localized name of this move is `"Aurora Veil"` in English and
    /// `"オーロラベール"` in Japanese.
    ///
    /// The move's raw value is `"aurora-veil"`.
    static let auroraVeil = AuroraVeilMove.move
}

enum AuroraVeilMove {
    static let move = PokemonMove(rawValue: "aurora-veil")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
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
            .english: "Aurora Veil",
            .japanese: "オーロラベール",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let auroraVeil = AuroraVeilMove.definition
}
