import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゆうわく in Japanese.
    ///
    /// The localized name of this move is `"Captivate"` in English and
    /// `"ゆうわく"` in Japanese.
    ///
    /// The move's raw value is `"captivate"`.
    static let captivate = CaptivateMove.move
}

enum CaptivateMove {
    static let move = PokemonMove(rawValue: "captivate")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .allOpposingPokemon
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
            .english: "Captivate",
            .japanese: "ゆうわく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let captivate = CaptivateMove.definition
}
