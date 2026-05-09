import Foundation

public extension PokemonMove {
    /// The Pokemon move known as だましうち in Japanese.
    ///
    /// The localized name of this move is `"Feint Attack"` in English and
    /// `"だましうち"` in Japanese.
    ///
    /// The move's raw value is `"feint-attack"`.
    static let feintAttack = FeintAttackMove.move
}

enum FeintAttackMove {
    static let move = PokemonMove(rawValue: "feint-attack")
    static let parameters1 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dark,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .notApplicable,
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
            .english: "Feint Attack",
            .japanese: "だましうち",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let feintAttack = FeintAttackMove.definition
}
