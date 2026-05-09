import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おいうち in Japanese.
    ///
    /// The localized name of this move is `"Pursuit"` in English and
    /// `"おいうち"` in Japanese.
    ///
    /// The move's raw value is `"pursuit"`.
    static let pursuit = PursuitMove.move
}

enum PursuitMove {
    static let move = PokemonMove(rawValue: "pursuit")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(40),
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
            .english: "Pursuit",
            .japanese: "おいうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pursuit = PursuitMove.definition
}
