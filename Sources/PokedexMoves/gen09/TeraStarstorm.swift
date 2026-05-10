import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テラクラスター in Japanese.
    ///
    /// The localized name of this move is `"Tera Starstorm"` in English and
    /// `"テラクラスター"` in Japanese.
    ///
    /// The move's raw value is `"tera-starstorm"`.
    static let teraStarstorm = TeraStarstormMove.move
}

enum TeraStarstormMove {
    static let move = PokemonMove(rawValue: "tera-starstorm")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 5,
        power: .fixed(120),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .allOpposingPokemon
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
            .english: "Tera Starstorm",
            .japanese: "テラクラスター",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let teraStarstorm = TeraStarstormMove.definition
}
