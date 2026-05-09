import Foundation

public extension PokemonMove {
    /// The Pokemon move known as リフレクター in Japanese.
    ///
    /// The localized name of this move is `"Reflect"` in English and
    /// `"リフレクター"` in Japanese.
    ///
    /// The move's raw value is `"reflect"`.
    static let reflect = ReflectMove.move
}

enum ReflectMove {
    static let move = PokemonMove(rawValue: "reflect")
    static let parameters = PokemonMove.Parameters(
        type: .psychic,
        pp: 20,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .usersSide
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .i,
        parameterHistory: [
            .init(
                versionGroups: Set(PokemonVersionGroup.allCases),
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Reflect",
            .japanese: "リフレクター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let reflect = ReflectMove.definition
}
