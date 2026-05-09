import Foundation

public extension PokemonMove {
    /// The Pokemon move known as シャドーパンチ in Japanese.
    ///
    /// The localized name of this move is `"Shadow Punch"` in English and
    /// `"シャドーパンチ"` in Japanese.
    ///
    /// The move's raw value is `"shadow-punch"`.
    static let shadowPunch = ShadowPunchMove.move
}

enum ShadowPunchMove {
    static let move = PokemonMove(rawValue: "shadow-punch")
    static let parameters = PokemonMove.Parameters(
        type: .ghost,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .notApplicable,
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
            .english: "Shadow Punch",
            .japanese: "シャドーパンチ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let shadowPunch = ShadowPunchMove.definition
}
