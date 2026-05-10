import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドーレイ in Japanese.
    ///
    /// The localized name of this move is `"Moongeist Beam"` in English and
    /// `"シャドーレイ"` in Japanese.
    ///
    /// The move's raw value is `"moongeist-beam"`.
    static let moongeistBeam = MoongeistBeamMove.move
}

enum MoongeistBeamMove {
    static let move = PokemonMove(rawValue: "moongeist-beam")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Moongeist Beam",
            .japanese: "シャドーレイ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let moongeistBeam = MoongeistBeamMove.definition
}
