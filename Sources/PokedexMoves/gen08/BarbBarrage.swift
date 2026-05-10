import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくばりセンボン in Japanese.
    ///
    /// The localized name of this move is `"Barb Barrage"` in English and
    /// `"どくばりセンボン"` in Japanese.
    ///
    /// The move's raw value is `"barb-barrage"`.
    static let barbBarrage = BarbBarrageMove.move
}

enum BarbBarrageMove {
    static let move = PokemonMove(rawValue: "barb-barrage")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(60),
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
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Barb Barrage",
            .japanese: "どくばりセンボン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let barbBarrage = BarbBarrageMove.definition
}
