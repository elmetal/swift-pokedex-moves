import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かみくだく in Japanese.
    ///
    /// The localized name of this move is `"Crunch"` in English and
    /// `"かみくだく"` in Japanese.
    ///
    /// The move's raw value is `"crunch"`.
    static let crunch = CrunchMove.move
}

enum CrunchMove {
    static let move = PokemonMove(rawValue: "crunch")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Crunch",
            .japanese: "かみくだく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let crunch = CrunchMove.definition
}
