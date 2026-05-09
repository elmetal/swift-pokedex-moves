import Foundation

public extension PokemonMove {
    /// The Pokemon move known as どくどくのキバ in Japanese.
    ///
    /// The localized name of this move is `"Poison Fang"` in English and
    /// `"どくどくのキバ"` in Japanese.
    ///
    /// The move's raw value is `"poison-fang"`.
    static let poisonFang = PoisonFangMove.move
}

enum PoisonFangMove {
    static let move = PokemonMove(rawValue: "poison-fang")
    static let parameters = PokemonMove.Parameters(
        type: .poison,
        pp: 15,
        power: .fixed(50),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
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
            .english: "Poison Fang",
            .japanese: "どくどくのキバ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let poisonFang = PoisonFangMove.definition
}
