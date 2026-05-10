import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ときのほうこう in Japanese.
    ///
    /// The localized name of this move is `"Roar of Time"` in English and
    /// `"ときのほうこう"` in Japanese.
    ///
    /// The move's raw value is `"roar-of-time"`.
    static let roarOfTime = RoarOfTimeMove.move
}

enum RoarOfTimeMove {
    static let move = PokemonMove(rawValue: "roar-of-time")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
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
            .english: "Roar of Time",
            .japanese: "ときのほうこう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let roarOfTime = RoarOfTimeMove.definition
}
