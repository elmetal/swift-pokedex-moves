import Foundation

public extension PokemonMove {
    /// The Pokemon move known as エレクトロビーム in Japanese.
    ///
    /// The localized name of this move is `"Electro Shot"` in English and
    /// `"エレクトロビーム"` in Japanese.
    ///
    /// The move's raw value is `"electro-shot"`.
    static let electroShot = ElectroShotMove.move
}

enum ElectroShotMove {
    static let move = PokemonMove(rawValue: "electro-shot")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 10,
        power: .fixed(130),
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
            .english: "Electro Shot",
            .japanese: "エレクトロビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let electroShot = ElectroShotMove.definition
}
