import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ホネこんぼう in Japanese.
    ///
    /// The localized name of this move is `"Bone Club"` in English and
    /// `"ホネこんぼう"` in Japanese.
    ///
    /// The move's raw value is `"bone-club"`.
    static let boneClub = BoneClubMove.move
}

enum BoneClubMove {
    static let move = PokemonMove(rawValue: "bone-club")
    static let parameters = PokemonMove.Parameters(
        type: .ground,
        pp: 20,
        power: .fixed(65),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
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
            .english: "Bone Club",
            .japanese: "ホネこんぼう",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let boneClub = BoneClubMove.definition
}
