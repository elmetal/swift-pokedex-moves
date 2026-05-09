import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほのおのうず in Japanese.
    ///
    /// The localized name of this move is `"Fire Spin"` in English and
    /// `"ほのおのうず"` in Japanese.
    ///
    /// The move's raw value is `"fire-spin"`.
    static let fireSpin = FireSpinMove.move
}

enum FireSpinMove {
    static let move = PokemonMove(rawValue: "fire-spin")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(15),
        hits: .one,
        accuracy: .percent(70),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
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
            .english: "Fire Spin",
            .japanese: "ほのおのうず",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fireSpin = FireSpinMove.definition
}
