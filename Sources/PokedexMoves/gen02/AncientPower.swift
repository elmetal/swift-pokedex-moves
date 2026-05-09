import Foundation

public extension PokemonMove {
    /// The Pokemon move known as げんしのちから in Japanese.
    ///
    /// The localized name of this move is `"Ancient Power"` in English and
    /// `"げんしのちから"` in Japanese.
    ///
    /// The move's raw value is `"ancient-power"`.
    static let ancientPower = AncientPowerMove.move
}

enum AncientPowerMove {
    static let move = PokemonMove(rawValue: "ancient-power")
    static let parameters1 = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(60),
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
            .english: "Ancient Power",
            .japanese: "げんしのちから",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let ancientPower = AncientPowerMove.definition
}
