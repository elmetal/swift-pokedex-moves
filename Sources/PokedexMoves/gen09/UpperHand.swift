import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はやてがえし in Japanese.
    ///
    /// The localized name of this move is `"Upper Hand"` in English and
    /// `"はやてがえし"` in Japanese.
    ///
    /// The move's raw value is `"upper-hand"`.
    static let upperHand = UpperHandMove.move
}

enum UpperHandMove {
    static let move = PokemonMove(rawValue: "upper-hand")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 15,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 3,
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
            .english: "Upper Hand",
            .japanese: "はやてがえし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let upperHand = UpperHandMove.definition
}
