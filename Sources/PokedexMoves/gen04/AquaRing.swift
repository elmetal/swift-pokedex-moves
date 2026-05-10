import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクアリング in Japanese.
    ///
    /// The localized name of this move is `"Aqua Ring"` in English and
    /// `"アクアリング"` in Japanese.
    ///
    /// The move's raw value is `"aqua-ring"`.
    static let aquaRing = AquaRingMove.move
}

enum AquaRingMove {
    static let move = PokemonMove(rawValue: "aqua-ring")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Aqua Ring",
            .japanese: "アクアリング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aquaRing = AquaRingMove.definition
}
