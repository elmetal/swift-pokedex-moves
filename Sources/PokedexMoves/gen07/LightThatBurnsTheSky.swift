import Foundation

public extension PokemonMove {
    /// The Pokemon move known as てんこがすめつぼうのひかり in Japanese.
    ///
    /// The localized name of this move is `"Light That Burns the Sky"` in English and
    /// `"てんこがすめつぼうのひかり"` in Japanese.
    ///
    /// The move's raw value is `"light-that-burns-the-sky"`.
    static let lightThatBurnsTheSky = LightThatBurnsTheSkyMove.move
}

enum LightThatBurnsTheSkyMove {
    static let move = PokemonMove(rawValue: "light-that-burns-the-sky")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 1,
        power: .fixed(200),
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
            .english: "Light That Burns the Sky",
            .japanese: "てんこがすめつぼうのひかり",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lightThatBurnsTheSky = LightThatBurnsTheSkyMove.definition
}
