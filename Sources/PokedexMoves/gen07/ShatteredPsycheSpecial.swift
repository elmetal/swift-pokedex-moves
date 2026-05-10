import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マキシマムサイブレイカー in Japanese.
    ///
    /// The localized name of this move is `"Shattered Psyche"` in English and
    /// `"マキシマムサイブレイカー"` in Japanese.
    ///
    /// The move's raw value is `"shattered-psyche--special"`.
    static let shatteredPsycheSpecial = ShatteredPsycheSpecialMove.move
}

enum ShatteredPsycheSpecialMove {
    static let move = PokemonMove(rawValue: "shattered-psyche--special")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 1,
        power: .varies,
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
            .english: "Shattered Psyche",
            .japanese: "マキシマムサイブレイカー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shatteredPsycheSpecial = ShatteredPsycheSpecialMove.definition
}
