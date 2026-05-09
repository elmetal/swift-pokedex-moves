import Foundation

public extension PokemonMove {
    /// The Pokemon move known as テクスチャー in Japanese.
    ///
    /// The localized name of this move is `"Conversion"` in English and
    /// `"テクスチャー"` in Japanese.
    ///
    /// The move's raw value is `"conversion"`.
    static let conversion = ConversionMove.move
}

enum ConversionMove {
    static let move = PokemonMove(rawValue: "conversion")
    static let parameters = PokemonMove.Parameters(
        type: .normal,
        pp: 30,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
        target: .user
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
            .english: "Conversion",
            .japanese: "テクスチャー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let conversion = ConversionMove.definition
}
