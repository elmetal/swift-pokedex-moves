import Foundation

public extension PokemonMove {
    /// The Pokemon move known as かなしばり in Japanese.
    ///
    /// The localized name of this move is `"Disable"` in English and
    /// `"かなしばり"` in Japanese.
    ///
    /// The move's raw value is `"disable"`.
    static let disable = DisableMove.move
}

enum DisableMove {
    static let move = PokemonMove(rawValue: "disable")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
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
            .english: "Disable",
            .japanese: "かなしばり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let disable = DisableMove.definition
}
