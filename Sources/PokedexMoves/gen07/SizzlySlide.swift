import Foundation

public extension PokemonMove {
    /// The Pokemon move known as めらめらバーン in Japanese.
    ///
    /// The localized name of this move is `"Sizzly Slide"` in English and
    /// `"めらめらバーン"` in Japanese.
    ///
    /// The move's raw value is `"sizzly-slide"`.
    static let sizzlySlide = SizzlySlideMove.move
}

enum SizzlySlideMove {
    static let move = PokemonMove(rawValue: "sizzly-slide")
    static let parameters1 = PokemonMove.Parameters(
        type: .fire,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .fire,
        pp: 20,
        power: .fixed(60),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .vii,
        parameterHistory: [
            .init(
                versionGroups: [.letsGoPikachuLetsGoEevee],
                parameters: parameters1
            ),
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters2
            ),
        ],
        localizedNames: [
            .english: "Sizzly Slide",
            .japanese: "めらめらバーン",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sizzlySlide = SizzlySlideMove.definition
}
