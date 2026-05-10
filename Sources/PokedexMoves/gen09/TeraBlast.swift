import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テラバースト in Japanese.
    ///
    /// The localized name of this move is `"Tera Blast"` in English and
    /// `"テラバースト"` in Japanese.
    ///
    /// The move's raw value is `"tera-blast"`.
    static let teraBlast = TeraBlastMove.move
}

enum TeraBlastMove {
    static let move = PokemonMove(rawValue: "tera-blast")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
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
        introducedIn: .ix,
        parameterHistory: [
            .init(
                versionGroups: [.scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Tera Blast",
            .japanese: "テラバースト",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let teraBlast = TeraBlastMove.definition
}
