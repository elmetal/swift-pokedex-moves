import Foundation

public extension PokemonMove {
    /// The Pokemon move known as メガトンパンチ in Japanese.
    ///
    /// The localized name of this move is `"Mega Punch"` in English and
    /// `"メガトンパンチ"` in Japanese.
    ///
    /// The move's raw value is `"mega-punch"`.
    static let megaPunch = MegaPunchMove.move
}

enum MegaPunchMove {
    static let move = PokemonMove(rawValue: "mega-punch")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 20,
        power: .fixed(80),
        hits: .one,
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
            .english: "Mega Punch",
            .japanese: "メガトンパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let megaPunch = MegaPunchMove.definition
}
