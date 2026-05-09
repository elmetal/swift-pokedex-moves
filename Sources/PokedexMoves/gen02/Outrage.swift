import Foundation

public extension PokemonMove {
    /// The Pokemon move known as げきりん in Japanese.
    ///
    /// The localized name of this move is `"Outrage"` in English and
    /// `"げきりん"` in Japanese.
    ///
    /// The move's raw value is `"outrage"`.
    static let outrage = OutrageMove.move
}

enum OutrageMove {
    static let move = PokemonMove(rawValue: "outrage")
    static let parameters1 = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .randomOpposingPokemon
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .randomOpposingPokemon
    )

    static let parameters3 = PokemonMove.Parameters(
        type: .dragon,
        pp: 10,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .randomOpposingPokemon
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
                ],
                parameters: parameters2
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
                parameters: parameters3
            ),
        ],
        localizedNames: [
            .english: "Outrage",
            .japanese: "げきりん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let outrage = OutrageMove.definition
}
