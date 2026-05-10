import Foundation

public extension PokemonMove {
    /// The Pokemon move known as フレアソング in Japanese.
    ///
    /// The localized name of this move is `"Torch Song"` in English and
    /// `"フレアソング"` in Japanese.
    ///
    /// The move's raw value is `"torch-song"`.
    static let torchSong = TorchSongMove.move
}

enum TorchSongMove {
    static let move = PokemonMove(rawValue: "torch-song")
    static let parameters = PokemonMove.Parameters(
        type: .fire,
        pp: 10,
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
            .english: "Torch Song",
            .japanese: "フレアソング",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let torchSong = TorchSongMove.definition
}
