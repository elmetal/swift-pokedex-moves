import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つぶらなひとみ in Japanese.
    ///
    /// The localized name of this move is `"Baby-Doll Eyes"` in English and
    /// `"つぶらなひとみ"` in Japanese.
    ///
    /// The move's raw value is `"baby-doll-eyes"`.
    static let babyDollEyes = BabyDollEyesMove.move
}

enum BabyDollEyesMove {
    static let move = PokemonMove(rawValue: "baby-doll-eyes")
    static let parameters = PokemonMove.Parameters(
        type: .fairy,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vi,
        parameterHistory: [
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
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Baby-Doll Eyes",
            .japanese: "つぶらなひとみ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let babyDollEyes = BabyDollEyesMove.definition
}
