import Foundation

public extension PokemonMove {
    /// The Pokemon move known as マッハパンチ in Japanese.
    ///
    /// The localized name of this move is `"Mach Punch"` in English and
    /// `"マッハパンチ"` in Japanese.
    ///
    /// The move's raw value is `"mach-punch"`.
    static let machPunch = MachPunchMove.move
}

enum MachPunchMove {
    static let move = PokemonMove(rawValue: "mach-punch")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 30,
        power: .fixed(40),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Mach Punch",
            .japanese: "マッハパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let machPunch = MachPunchMove.definition
}
