import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ひょうざんおろし in Japanese.
    ///
    /// The localized name of this move is `"Mountain Gale"` in English and
    /// `"ひょうざんおろし"` in Japanese.
    ///
    /// The move's raw value is `"mountain-gale"`.
    static let mountainGale = MountainGaleMove.move
}

enum MountainGaleMove {
    static let move = PokemonMove(rawValue: "mountain-gale")
    static let parameters = PokemonMove.Parameters(
        type: .ice,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(85),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Mountain Gale",
            .japanese: "ひょうざんおろし",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let mountainGale = MountainGaleMove.definition
}
