import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひっさつのピカチュート in Japanese.
    ///
    /// The localized name of this move is `"Catastropika"` in English and
    /// `"ひっさつのピカチュート"` in Japanese.
    ///
    /// The move's raw value is `"catastropika"`.
    static let catastropika = CatastropikaMove.move
}

enum CatastropikaMove {
    static let move = PokemonMove(rawValue: "catastropika")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 1,
        power: .fixed(210),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
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
            .english: "Catastropika",
            .japanese: "ひっさつのピカチュート",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let catastropika = CatastropikaMove.definition
}
