import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オリジンズスーパーノヴァ in Japanese.
    ///
    /// The localized name of this move is `"Genesis Supernova"` in English and
    /// `"オリジンズスーパーノヴァ"` in Japanese.
    ///
    /// The move's raw value is `"genesis-supernova"`.
    static let genesisSupernova = GenesisSupernovaMove.move
}

enum GenesisSupernovaMove {
    static let move = PokemonMove(rawValue: "genesis-supernova")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 1,
        power: .fixed(185),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Genesis Supernova",
            .japanese: "オリジンズスーパーノヴァ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let genesisSupernova = GenesisSupernovaMove.definition
}
