import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おしゃべり in Japanese.
    ///
    /// The localized name of this move is `"Chatter"` in English and
    /// `"おしゃべり"` in Japanese.
    ///
    /// The move's raw value is `"chatter"`.
    static let chatter = ChatterMove.move
}

enum ChatterMove {
    static let move = PokemonMove(rawValue: "chatter")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
            ),
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Chatter",
            .japanese: "おしゃべり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let chatter = ChatterMove.definition
}
