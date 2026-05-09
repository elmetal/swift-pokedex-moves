import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ラスターパージ in Japanese.
    ///
    /// The localized name of this move is `"Luster Purge"` in English and
    /// `"ラスターパージ"` in Japanese.
    ///
    /// The move's raw value is `"luster-purge"`.
    static let lusterPurge = LusterPurgeMove.move
}

enum LusterPurgeMove {
    static let move = PokemonMove(rawValue: "luster-purge")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 5,
        power: .fixed(95),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Luster Purge",
            .japanese: "ラスターパージ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let lusterPurge = LusterPurgeMove.definition
}
