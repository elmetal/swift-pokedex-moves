import Foundation

public extension PokemonMove {
    /// The Pokemon move known as トリックフラワー in Japanese.
    ///
    /// The localized name of this move is `"Flower Trick"` in English and
    /// `"トリックフラワー"` in Japanese.
    ///
    /// The move's raw value is `"flower-trick"`.
    static let flowerTrick = FlowerTrickMove.move
}

enum FlowerTrickMove {
    static let move = PokemonMove(rawValue: "flower-trick")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .physical,
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
            .english: "Flower Trick",
            .japanese: "トリックフラワー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let flowerTrick = FlowerTrickMove.definition
}
