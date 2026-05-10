import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ライトニングサーフライド in Japanese.
    ///
    /// The localized name of this move is `"Stoked Sparksurfer"` in English and
    /// `"ライトニングサーフライド"` in Japanese.
    ///
    /// The move's raw value is `"stoked-sparksurfer"`.
    static let stokedSparksurfer = StokedSparksurferMove.move
}

enum StokedSparksurferMove {
    static let move = PokemonMove(rawValue: "stoked-sparksurfer")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 1,
        power: .fixed(175),
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
            .english: "Stoked Sparksurfer",
            .japanese: "ライトニングサーフライド",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let stokedSparksurfer = StokedSparksurferMove.definition
}
