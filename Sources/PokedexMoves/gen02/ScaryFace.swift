import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こわいかお in Japanese.
    ///
    /// The localized name of this move is `"Scary Face"` in English and
    /// `"こわいかお"` in Japanese.
    ///
    /// The move's raw value is `"scary-face"`.
    static let scaryFace = ScaryFaceMove.move
}

enum ScaryFaceMove {
    static let move = PokemonMove(rawValue: "scary-face")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .goldSilver,
                    .crystal,
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                ],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Scary Face",
            .japanese: "こわいかお",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let scaryFace = ScaryFaceMove.definition
}
