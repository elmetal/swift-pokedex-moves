import Foundation

public extension PokemonMove {
    /// The Pokemon move known as こうそくスピン in Japanese.
    ///
    /// The localized name of this move is `"Rapid Spin"` in English and
    /// `"こうそくスピン"` in Japanese.
    ///
    /// The move's raw value is `"rapid-spin"`.
    static let rapidSpin = RapidSpinMove.move
}

enum RapidSpinMove {
    static let move = PokemonMove(rawValue: "rapid-spin")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 40,
        power: .fixed(50),
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
                ],
                parameters: parameters1
            ),
            .init(
                versionGroups: [
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
            .english: "Rapid Spin",
            .japanese: "こうそくスピン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rapidSpin = RapidSpinMove.definition
}
