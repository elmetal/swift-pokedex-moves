import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ドリルくちばし in Japanese.
    ///
    /// The localized name of this move is `"Drill Peck"` in English and
    /// `"ドリルくちばし"` in Japanese.
    ///
    /// The move's raw value is `"drill-peck"`.
    static let drillPeck = DrillPeckMove.move
}

enum DrillPeckMove {
    static let move = PokemonMove(rawValue: "drill-peck")
    static let parameters = PokemonMove.Parameters(
        type: .flying,
        pp: 20,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Drill Peck",
            .japanese: "ドリルくちばし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let drillPeck = DrillPeckMove.definition
}
