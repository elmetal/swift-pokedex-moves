import Foundation

public extension PokemonMove {
    /// The Pokemon move known as しおみず in Japanese.
    ///
    /// The localized name of this move is `"Brine"` in English and
    /// `"しおみず"` in Japanese.
    ///
    /// The move's raw value is `"brine"`.
    static let brine = BrineMove.move
}

enum BrineMove {
    static let move = PokemonMove(rawValue: "brine")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 10,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Brine",
            .japanese: "しおみず",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let brine = BrineMove.definition
}
