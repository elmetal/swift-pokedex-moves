import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トライアタック in Japanese.
    ///
    /// The localized name of this move is `"Tri Attack"` in English and
    /// `"トライアタック"` in Japanese.
    ///
    /// The move's raw value is `"tri-attack"`.
    static let triAttack = TriAttackMove.move
}

enum TriAttackMove {
    static let move = PokemonMove(rawValue: "tri-attack")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Tri Attack",
            .japanese: "トライアタック",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let triAttack = TriAttackMove.definition
}
