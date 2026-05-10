import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクアカッター in Japanese.
    ///
    /// The localized name of this move is `"Aqua Cutter"` in English and
    /// `"アクアカッター"` in Japanese.
    ///
    /// The move's raw value is `"aqua-cutter"`.
    static let aquaCutter = AquaCutterMove.move
}

enum AquaCutterMove {
    static let move = PokemonMove(rawValue: "aqua-cutter")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 20,
        power: .fixed(70),
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
            .english: "Aqua Cutter",
            .japanese: "アクアカッター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let aquaCutter = AquaCutterMove.definition
}
