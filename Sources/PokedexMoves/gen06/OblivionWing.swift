import Foundation

public extension PokemonMove {
    /// The Pokemon move known as デスウイング in Japanese.
    ///
    /// The localized name of this move is `"Oblivion Wing"` in English and
    /// `"デスウイング"` in Japanese.
    ///
    /// The move's raw value is `"oblivion-wing"`.
    static let oblivionWing = OblivionWingMove.move
}

enum OblivionWingMove {
    static let move = PokemonMove(rawValue: "oblivion-wing")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Oblivion Wing",
            .japanese: "デスウイング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let oblivionWing = OblivionWingMove.definition
}
