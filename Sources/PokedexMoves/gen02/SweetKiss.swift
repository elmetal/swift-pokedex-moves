import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てんしのキッス in Japanese.
    ///
    /// The localized name of this move is `"Sweet Kiss"` in English and
    /// `"てんしのキッス"` in Japanese.
    ///
    /// The move's raw value is `"sweet-kiss"`.
    static let sweetKiss = SweetKissMove.move
}

enum SweetKissMove {
    static let move = PokemonMove(rawValue: "sweet-kiss")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(75),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fairy,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(75),
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
                    .blackWhite,
                    .black2White2,
                ],
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
            .english: "Sweet Kiss",
            .japanese: "てんしのキッス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sweetKiss = SweetKissMove.definition
}
