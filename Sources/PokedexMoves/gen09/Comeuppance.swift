import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ほうふく in Japanese.
    ///
    /// The localized name of this move is `"Comeuppance"` in English and
    /// `"ほうふく"` in Japanese.
    ///
    /// The move's raw value is `"comeuppance"`.
    static let comeuppance = ComeuppanceMove.move
}

enum ComeuppanceMove {
    static let move = PokemonMove(rawValue: "comeuppance")
    static let parameters = PokemonMove.Parameters(
        type: .dark,
        pp: 10,
        power: .varies,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .move
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
            .english: "Comeuppance",
            .japanese: "ほうふく",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let comeuppance = ComeuppanceMove.definition
}
