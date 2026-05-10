import Foundation

public extension PokemonMove {
    /// The Pokemon move known as サイコカッター in Japanese.
    ///
    /// The localized name of this move is `"Psycho Cut"` in English and
    /// `"サイコカッター"` in Japanese.
    ///
    /// The move's raw value is `"psycho-cut"`.
    static let psychoCut = PsychoCutMove.move
}

enum PsychoCutMove {
    static let move = PokemonMove(rawValue: "psycho-cut")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Psycho Cut",
            .japanese: "サイコカッター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let psychoCut = PsychoCutMove.definition
}
