import Foundation

public extension PokemonMove {
    /// The Pokemon move known as グラススライダー in Japanese.
    ///
    /// The localized name of this move is `"Grassy Glide"` in English and
    /// `"グラススライダー"` in Japanese.
    ///
    /// The move's raw value is `"grassy-glide"`.
    static let grassyGlide = GrassyGlideMove.move
}

enum GrassyGlideMove {
    static let move = PokemonMove(rawValue: "grassy-glide")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 20,
        power: .fixed(55),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Grassy Glide",
            .japanese: "グラススライダー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let grassyGlide = GrassyGlideMove.definition
}
