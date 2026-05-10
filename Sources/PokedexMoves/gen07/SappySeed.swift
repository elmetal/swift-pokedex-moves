import Foundation

public extension PokemonMove {
    /// The Pokemon move known as すくすくボンバー in Japanese.
    ///
    /// The localized name of this move is `"Sappy Seed"` in English and
    /// `"すくすくボンバー"` in Japanese.
    ///
    /// The move's raw value is `"sappy-seed"`.
    static let sappySeed = SappySeedMove.move
}

enum SappySeedMove {
    static let move = PokemonMove(rawValue: "sappy-seed")
    static let parameters1 = PokemonMove.Parameters(
        type: .grass,
        pp: 15,
        power: .fixed(90),
        hits: .one,
        accuracy: .percent(100),
        priority: 0,
        category: .physical,
        target: .target
    )

    static let parameters2 = PokemonMove.Parameters(
        type: .grass,
        pp: 10,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(90),
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
            .english: "Sappy Seed",
            .japanese: "すくすくボンバー",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let sappySeed = SappySeedMove.definition
}
