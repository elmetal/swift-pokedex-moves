import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくびし in Japanese.
    ///
    /// The localized name of this move is `"Toxic Spikes"` in English and
    /// `"どくびし"` in Japanese.
    ///
    /// The move's raw value is `"toxic-spikes"`.
    static let toxicSpikes = ToxicSpikesMove.move
}

enum ToxicSpikesMove {
    static let move = PokemonMove(rawValue: "toxic-spikes")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .opposingSide
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
            .english: "Toxic Spikes",
            .japanese: "どくびし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let toxicSpikes = ToxicSpikesMove.definition
}
