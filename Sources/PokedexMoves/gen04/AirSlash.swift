import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エアスラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Air Slash"` in English and
    /// `"エアスラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"air-slash"`.
    static let airSlash = AirSlashMove.move
}

enum AirSlashMove {
    static let move = PokemonMove(rawValue: "air-slash")
    static let parameters1 = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .flying,
        pp: 15,
        power: .fixed(75),
        hits: .one,
        accuracy: .percent(95),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Air Slash",
            .japanese: "エアスラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let airSlash = AirSlashMove.definition
}
