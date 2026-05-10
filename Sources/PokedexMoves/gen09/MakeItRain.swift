import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ゴールドラッシュ in Japanese.
    ///
    /// The localized name of this move is `"Make It Rain"` in English and
    /// `"ゴールドラッシュ"` in Japanese.
    ///
    /// The move's raw value is `"make-it-rain"`.
    static let makeItRain = MakeItRainMove.move
}

enum MakeItRainMove {
    static let move = PokemonMove(rawValue: "make-it-rain")
    static let parameters = PokemonMove.Parameters(
        type: .steel,
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
            .english: "Make It Rain",
            .japanese: "ゴールドラッシュ",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let makeItRain = MakeItRainMove.definition
}
