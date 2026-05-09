import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ハードプラント in Japanese.
    ///
    /// The localized name of this move is `"Frenzy Plant"` in English and
    /// `"ハードプラント"` in Japanese.
    ///
    /// The move's raw value is `"frenzy-plant"`.
    static let frenzyPlant = FrenzyPlantMove.move
}

enum FrenzyPlantMove {
    static let move = PokemonMove(rawValue: "frenzy-plant")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 5,
        power: .fixed(150),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .special,
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
            .english: "Frenzy Plant",
            .japanese: "ハードプラント",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let frenzyPlant = FrenzyPlantMove.definition
}
