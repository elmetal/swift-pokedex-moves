import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ブラストバーン in Japanese.
    ///
    /// The localized name of this move is `"Blast Burn"` in English and
    /// `"ブラストバーン"` in Japanese.
    ///
    /// The move's raw value is `"blast-burn"`.
    static let blastBurn = BlastBurnMove.move
}

enum BlastBurnMove {
    static let move = PokemonMove(rawValue: "blast-burn")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .iii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow, .goldSilver, .crystal]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Blast Burn",
            .japanese: "ブラストバーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let blastBurn = BlastBurnMove.definition
}
