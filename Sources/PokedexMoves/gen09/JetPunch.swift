import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ジェットパンチ in Japanese.
    ///
    /// The localized name of this move is `"Jet Punch"` in English and
    /// `"ジェットパンチ"` in Japanese.
    ///
    /// The move's raw value is `"jet-punch"`.
    static let jetPunch = JetPunchMove.move
}

enum JetPunchMove {
    static let move = PokemonMove(rawValue: "jet-punch")
    static let parameters = PokemonMove.Parameters(
        type: .water,
        pp: 15,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 1,
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
            .english: "Jet Punch",
            .japanese: "ジェットパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let jetPunch = JetPunchMove.definition
}
