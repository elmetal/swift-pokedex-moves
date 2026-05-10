import Foundation

public extension PokemonMove {
    /// The Pokemon move known as きまぐレーザー in Japanese.
    ///
    /// The localized name of this move is `"Fickle Beam"` in English and
    /// `"きまぐレーザー"` in Japanese.
    ///
    /// The move's raw value is `"fickle-beam"`.
    static let fickleBeam = FickleBeamMove.move
}

enum FickleBeamMove {
    static let move = PokemonMove(rawValue: "fickle-beam")
    static let parameters = PokemonMove.Parameters(
        type: .dragon,
        pp: 5,
        power: .fixed(80),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
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
            .english: "Fickle Beam",
            .japanese: "きまぐレーザー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let fickleBeam = FickleBeamMove.definition
}
