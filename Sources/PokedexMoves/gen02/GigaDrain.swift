import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ギガドレイン in Japanese.
    ///
    /// The localized name of this move is `"Giga Drain"` in English and
    /// `"ギガドレイン"` in Japanese.
    ///
    /// The move's raw value is `"giga-drain"`.
    static let gigaDrain = GigaDrainMove.move
}

enum GigaDrainMove {
    static let move = PokemonMove(rawValue: "giga-drain")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Giga Drain",
            .japanese: "ギガドレイン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let gigaDrain = GigaDrainMove.definition
}
