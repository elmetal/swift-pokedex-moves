import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコファング in Japanese.
    ///
    /// The localized name of this move is `"Psychic Fangs"` in English and
    /// `"サイコファング"` in Japanese.
    ///
    /// The move's raw value is `"psychic-fangs"`.
    static let psychicFangs = PsychicFangsMove.move
}

enum PsychicFangsMove {
    static let move = PokemonMove(rawValue: "psychic-fangs")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(85),
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
            .english: "Psychic Fangs",
            .japanese: "サイコファング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychicFangs = PsychicFangsMove.definition
}
