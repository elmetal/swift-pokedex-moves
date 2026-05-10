import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハバネロエキス in Japanese.
    ///
    /// The localized name of this move is `"Spicy Extract"` in English and
    /// `"ハバネロエキス"` in Japanese.
    ///
    /// The move's raw value is `"spicy-extract"`.
    static let spicyExtract = SpicyExtractMove.move
}

enum SpicyExtractMove {
    static let move = PokemonMove(rawValue: "spicy-extract")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .none,
        hits: .one,
        accuracy: .notApplicable,
        priority: 0,
        category: .status,
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
            .english: "Spicy Extract",
            .japanese: "ハバネロエキス",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let spicyExtract = SpicyExtractMove.definition
}
