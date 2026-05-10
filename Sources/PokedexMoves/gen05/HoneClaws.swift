import Foundation

public extension PokemonMove {
    /// The Pokemon move known as つめとぎ in Japanese.
    ///
    /// The localized name of this move is `"Hone Claws"` in English and
    /// `"つめとぎ"` in Japanese.
    ///
    /// The move's raw value is `"hone-claws"`.
    static let honeClaws = HoneClawsMove.move
}

enum HoneClawsMove {
    static let move = PokemonMove(rawValue: "hone-claws")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Hone Claws",
            .japanese: "つめとぎ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let honeClaws = HoneClawsMove.definition
}
