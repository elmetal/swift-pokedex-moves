import Foundation

public extension PokemonMove {
    /// The Pokemon move known as イナズマドライブ in Japanese.
    ///
    /// The localized name of this move is `"Electro Drift"` in English and
    /// `"イナズマドライブ"` in Japanese.
    ///
    /// The move's raw value is `"electro-drift"`.
    static let electroDrift = ElectroDriftMove.move
}

enum ElectroDriftMove {
    static let move = PokemonMove(rawValue: "electro-drift")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
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
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Electro Drift",
            .japanese: "イナズマドライブ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let electroDrift = ElectroDriftMove.definition
}
