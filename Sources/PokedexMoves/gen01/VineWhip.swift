import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つるのムチ in Japanese.
    ///
    /// The localized name of this move is `"Vine Whip"` in English and
    /// `"つるのムチ"` in Japanese.
    ///
    /// The move's raw value is `"vine-whip"`.
    static let vineWhip = VineWhipMove.move
}

enum VineWhipMove {
    static let move = PokemonMove(rawValue: "vine-whip")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(35),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .grass,
        pp: 25,
        power: .fixed(45),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Vine Whip",
            .japanese: "つるのムチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let vineWhip = VineWhipMove.definition
}
