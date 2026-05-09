import Foundation

public extension PokemonMove {
    /// The Pokemon move known as いやしのすず in Japanese.
    ///
    /// The localized name of this move is `"Heal Bell"` in English and
    /// `"いやしのすず"` in Japanese.
    ///
    /// The move's raw value is `"heal-bell"`.
    static let healBell = HealBellMove.move
}

enum HealBellMove {
    static let move = PokemonMove(rawValue: "heal-bell")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .userAndAllies
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .ii,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases).subtracting([.redBlue, .yellow]),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Heal Bell",
            .japanese: "いやしのすず",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let healBell = HealBellMove.definition
}
