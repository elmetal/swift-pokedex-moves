import Foundation

public extension PokemonMove {
    /// The Pokemon move known as タキオンカッター in Japanese.
    ///
    /// The localized name of this move is `"Tachyon Cutter"` in English and
    /// `"タキオンカッター"` in Japanese.
    ///
    /// The move's raw value is `"tachyon-cutter"`.
    static let tachyonCutter = TachyonCutterMove.move
}

enum TachyonCutterMove {
    static let move = PokemonMove(rawValue: "tachyon-cutter")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
        pp: 10,
        power: .fixed(50),
        hits: .fixed(2),
        accuracy: .alwaysHits,
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
            .english: "Tachyon Cutter",
            .japanese: "タキオンカッター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let tachyonCutter = TachyonCutterMove.definition
}
