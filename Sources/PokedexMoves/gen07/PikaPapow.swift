import Foundation

public extension PokemonMove {
    /// The Pokemon move known as ピカピカサンダー in Japanese.
    ///
    /// The localized name of this move is `"Pika Papow"` in English and
    /// `"ピカピカサンダー"` in Japanese.
    ///
    /// The move's raw value is `"pika-papow"`.
    static let pikaPapow = PikaPapowMove.move
}

enum PikaPapowMove {
    static let move = PokemonMove(rawValue: "pika-papow")
    static let parameters = PokemonMove.Parameters(
        type: .electric,
        pp: 20,
        power: .varies,
        hits: .one,
        accuracy: .alwaysHits,
        priority: 0,
        category: .special,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee, .swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Pika Papow",
            .japanese: "ピカピカサンダー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let pikaPapow = PikaPapowMove.definition
}
