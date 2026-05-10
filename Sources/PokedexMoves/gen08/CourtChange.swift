import Foundation

public extension PokemonMove {
    /// The Pokemon move known as コートチェンジ in Japanese.
    ///
    /// The localized name of this move is `"Court Change"` in English and
    /// `"コートチェンジ"` in Japanese.
    ///
    /// The move's raw value is `"court-change"`.
    static let courtChange = CourtChangeMove.move
}

enum CourtChangeMove {
    static let move = PokemonMove(rawValue: "court-change")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 10,
        power: .none,
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .status,
        target: .battlefield
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Court Change",
            .japanese: "コートチェンジ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let courtChange = CourtChangeMove.definition
}
