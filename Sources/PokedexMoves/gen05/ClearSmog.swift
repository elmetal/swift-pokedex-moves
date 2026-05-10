import Foundation

public extension PokemonMove {
    /// The Pokemon move known as クリアスモッグ in Japanese.
    ///
    /// The localized name of this move is `"Clear Smog"` in English and
    /// `"クリアスモッグ"` in Japanese.
    ///
    /// The move's raw value is `"clear-smog"`.
    static let clearSmog = ClearSmogMove.move
}

enum ClearSmogMove {
    static let move = PokemonMove(rawValue: "clear-smog")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 15,
        power: .fixed(50),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .v,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Clear Smog",
            .japanese: "クリアスモッグ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let clearSmog = ClearSmogMove.definition
}
