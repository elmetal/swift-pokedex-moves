import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つじぎり in Japanese.
    ///
    /// The localized name of this move is `"Night Slash"` in English and
    /// `"つじぎり"` in Japanese.
    ///
    /// The move's raw value is `"night-slash"`.
    static let nightSlash = NightSlashMove.move
}

enum NightSlashMove {
    static let move = PokemonMove(rawValue: "night-slash")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Night Slash",
            .japanese: "つじぎり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let nightSlash = NightSlashMove.definition
}
