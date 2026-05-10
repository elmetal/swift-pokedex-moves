import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オーラウイング in Japanese.
    ///
    /// The localized name of this move is `"Esper Wing"` in English and
    /// `"オーラウイング"` in Japanese.
    ///
    /// The move's raw value is `"esper-wing"`.
    static let esperWing = EsperWingMove.move
}

enum EsperWingMove {
    static let move = PokemonMove(rawValue: "esper-wing")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 10,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Esper Wing",
            .japanese: "オーラウイング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let esperWing = EsperWingMove.definition
}
