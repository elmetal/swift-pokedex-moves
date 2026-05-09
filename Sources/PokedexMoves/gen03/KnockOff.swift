import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はたきおとす in Japanese.
    ///
    /// The localized name of this move is `"Knock Off"` in English and
    /// `"はたきおとす"` in Japanese.
    ///
    /// The move's raw value is `"knock-off"`.
    static let knockOff = KnockOffMove.move
}

enum KnockOffMove {
    static let move = PokemonMove(rawValue: "knock-off")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
                    .rubySapphire,
                    .emerald,
                    .fireRedLeafGreen,
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
                    .diamondPearl,
                    .platinum,
                    .heartGoldSoulSilver,
                    .blackWhite,
                    .black2White2,
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Knock Off",
            .japanese: "はたきおとす",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let knockOff = KnockOffMove.definition
}
