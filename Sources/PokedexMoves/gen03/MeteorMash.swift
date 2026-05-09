import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コメットパンチ in Japanese.
    ///
    /// The localized name of this move is `"Meteor Mash"` in English and
    /// `"コメットパンチ"` in Japanese.
    ///
    /// The move's raw value is `"meteor-mash"`.
    static let meteorMash = MeteorMashMove.move
}

enum MeteorMashMove {
    static let move = PokemonMove(rawValue: "meteor-mash")
    static let parameters1 = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Meteor Mash",
            .japanese: "コメットパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let meteorMash = MeteorMashMove.definition
}
