import Foundation

public extension PokemonMove {
    /// The Pokemon move known as さきどり in Japanese.
    ///
    /// The localized name of this move is `"Me First"` in English and
    /// `"さきどり"` in Japanese.
    ///
    /// The move's raw value is `"me-first"`.
    static let meFirst = MeFirstMove.move
}

enum MeFirstMove {
    static let move = PokemonMove(rawValue: "me-first")
    static let parameters1 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(0),
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iv,
        parameterHistory: [
            .init(
                versionGroups: [.diamondPearl, .platinum, .heartGoldSoulSilver],
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
            .english: "Me First",
            .japanese: "さきどり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let meFirst = MeFirstMove.definition
}
