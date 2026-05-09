import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いわくだき in Japanese.
    ///
    /// The localized name of this move is `"Rock Smash"` in English and
    /// `"いわくだき"` in Japanese.
    ///
    /// The move's raw value is `"rock-smash"`.
    static let rockSmash = RockSmashMove.move
}

enum RockSmashMove {
    static let move = PokemonMove(rawValue: "rock-smash")
    static let parameters1 = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(20),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Rock Smash",
            .japanese: "いわくだき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let rockSmash = RockSmashMove.definition
}
