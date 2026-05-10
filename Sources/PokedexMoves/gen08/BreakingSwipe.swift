import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ワイドブレイカー in Japanese.
    ///
    /// The localized name of this move is `"Breaking Swipe"` in English and
    /// `"ワイドブレイカー"` in Japanese.
    ///
    /// The move's raw value is `"breaking-swipe"`.
    static let breakingSwipe = BreakingSwipeMove.move
}

enum BreakingSwipeMove {
    static let move = PokemonMove(rawValue: "breaking-swipe")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .allOpposingPokemon
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
            .english: "Breaking Swipe",
            .japanese: "ワイドブレイカー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let breakingSwipe = BreakingSwipeMove.definition
}
