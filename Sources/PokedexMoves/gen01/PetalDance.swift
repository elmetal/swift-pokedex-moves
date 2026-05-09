import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はなびらのまい in Japanese.
    ///
    /// The localized name of this move is `"Petal Dance"` in English and
    /// `"はなびらのまい"` in Japanese.
    ///
    /// The move's raw value is `"petal-dance"`.
    static let petalDance = PetalDanceMove.move
}

enum PetalDanceMove {
    static let move = PokemonMove(rawValue: "petal-dance")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 20,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .randomOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .randomOpposingPokemon
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
            .english: "Petal Dance",
            .japanese: "はなびらのまい",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let petalDance = PetalDanceMove.definition
}
