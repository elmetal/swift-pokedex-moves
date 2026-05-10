import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ポイズンアクセル in Japanese.
    ///
    /// The localized name of this move is `"Noxious Torque"` in English and
    /// `"ポイズンアクセル"` in Japanese.
    ///
    /// The move's raw value is `"noxious-torque"`.
    static let noxiousTorque = NoxiousTorqueMove.move
}

enum NoxiousTorqueMove {
    static let move = PokemonMove(rawValue: "noxious-torque")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Noxious Torque",
            .japanese: "ポイズンアクセル",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let noxiousTorque = NoxiousTorqueMove.definition
}
