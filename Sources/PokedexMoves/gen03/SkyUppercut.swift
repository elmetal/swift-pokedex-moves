import Foundation

public extension PokemonMove {
    /// The Pokemon move known as スカイアッパー in Japanese.
    ///
    /// The localized name of this move is `"Sky Uppercut"` in English and
    /// `"スカイアッパー"` in Japanese.
    ///
    /// The move's raw value is `"sky-uppercut"`.
    static let skyUppercut = SkyUppercutMove.move
}

enum SkyUppercutMove {
    static let move = PokemonMove(rawValue: "sky-uppercut")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(85),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Sky Uppercut",
            .japanese: "スカイアッパー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let skyUppercut = SkyUppercutMove.definition
}
