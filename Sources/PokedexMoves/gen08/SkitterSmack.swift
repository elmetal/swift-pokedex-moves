import Foundation

public extension PokemonMove {
    /// The Pokemon move known as はいよるいちげき in Japanese.
    ///
    /// The localized name of this move is `"Skitter Smack"` in English and
    /// `"はいよるいちげき"` in Japanese.
    ///
    /// The move's raw value is `"skitter-smack"`.
    static let skitterSmack = SkitterSmackMove.move
}

enum SkitterSmackMove {
    static let move = PokemonMove(rawValue: "skitter-smack")
    static let parameters = PokemonMove.Parameters(
        type: .bug,
        pp: 10,
        power: .fixed(70),
        hits: .one,
        accuracy: .percent(90),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let definition = PokemonMoveDefinition(
        move: move,
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Skitter Smack",
            .japanese: "はいよるいちげき",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let skitterSmack = SkitterSmackMove.definition
}
