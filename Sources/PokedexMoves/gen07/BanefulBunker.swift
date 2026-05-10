import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トーチカ in Japanese.
    ///
    /// The localized name of this move is `"Baneful Bunker"` in English and
    /// `"トーチカ"` in Japanese.
    ///
    /// The move's raw value is `"baneful-bunker"`.
    static let banefulBunker = BanefulBunkerMove.move
}

enum BanefulBunkerMove {
    static let move = PokemonMove(rawValue: "baneful-bunker")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 4,
        category: .status,
        target: .user
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [
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
            .english: "Baneful Bunker",
            .japanese: "トーチカ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let banefulBunker = BanefulBunkerMove.definition
}
