import Foundation

public extension PokemonMove {
    /// The Pokemon move known as たまなげ in Japanese.
    ///
    /// The localized name of this move is `"Barrage"` in English and
    /// `"たまなげ"` in Japanese.
    ///
    /// The move's raw value is `"barrage"`.
    static let barrage = BarrageMove.move
}

enum BarrageMove {
    static let move = PokemonMove(rawValue: "barrage")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(15),
        hits: .range(2...5),
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Barrage",
            .japanese: "たまなげ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let barrage = BarrageMove.definition
}
