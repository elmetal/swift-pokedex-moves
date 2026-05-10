import Foundation

public extension PokemonMove {
    /// The Pokemon move known as おいかぜ in Japanese.
    ///
    /// The localized name of this move is `"Tailwind"` in English and
    /// `"おいかぜ"` in Japanese.
    ///
    /// The move's raw value is `"tailwind"`.
    static let tailwind = TailwindMove.move
}

enum TailwindMove {
    static let move = PokemonMove(rawValue: "tailwind")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver, .blackWhite, .black2White2],
                parameters: parameters1
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
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Tailwind",
            .japanese: "おいかぜ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tailwind = TailwindMove.definition
}
