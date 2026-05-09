import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だいばくはつ in Japanese.
    ///
    /// The localized name of this move is `"Explosion"` in English and
    /// `"だいばくはつ"` in Japanese.
    ///
    /// The move's raw value is `"explosion"`.
    static let explosion = ExplosionMove.move
}

enum ExplosionMove {
    static let move = PokemonMove(rawValue: "explosion")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(170),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(250),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOtherPokemon
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: [
                    .redBlue,
                    .yellow,
                ],
                parameters: parameters1
            ),
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
            .english: "Explosion",
            .japanese: "だいばくはつ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let explosion = ExplosionMove.definition
}
