import Foundation

public extension PokemonMove {
    /// The Pokemon move known as がむしゃら in Japanese.
    ///
    /// The localized name of this move is `"Endeavor"` in English and
    /// `"がむしゃら"` in Japanese.
    ///
    /// The move's raw value is `"endeavor"`.
    static let endeavor = EndeavorMove.move
}

enum EndeavorMove {
    static let move = PokemonMove(rawValue: "endeavor")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .varies,
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
            .english: "Endeavor",
            .japanese: "がむしゃら",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let endeavor = EndeavorMove.definition
}
