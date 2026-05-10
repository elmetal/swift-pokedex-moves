import Foundation

public extension PokemonMove {
    /// The Pokemon move known as もろはのずつき in Japanese.
    ///
    /// The localized name of this move is `"Head Smash"` in English and
    /// `"もろはのずつき"` in Japanese.
    ///
    /// The move's raw value is `"head-smash"`.
    static let headSmash = HeadSmashMove.move
}

enum HeadSmashMove {
    static let move = PokemonMove(rawValue: "head-smash")
    static let parameters = PokemonMove.Parameters(
        type: .rock,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(80),
        priority: 0,
        category: .physical,
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
            .english: "Head Smash",
            .japanese: "もろはのずつき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let headSmash = HeadSmashMove.definition
}
