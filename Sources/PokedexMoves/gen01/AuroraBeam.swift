import Foundation

public extension PokemonMove {
    /// The Pokemon move known as オーロラビーム in Japanese.
    ///
    /// The localized name of this move is `"Aurora Beam"` in English and
    /// `"オーロラビーム"` in Japanese.
    ///
    /// The move's raw value is `"aurora-beam"`.
    static let auroraBeam = AuroraBeamMove.move
}

enum AuroraBeamMove {
    static let move = PokemonMove(rawValue: "aurora-beam")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .special,
        target: .target
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
            .english: "Aurora Beam",
            .japanese: "オーロラビーム",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let auroraBeam = AuroraBeamMove.definition
}
