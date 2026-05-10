import Foundation

public extension PokemonMove {
    /// The Pokemon move known as りんごさん in Japanese.
    ///
    /// The localized name of this move is `"Apple Acid"` in English and
    /// `"りんごさん"` in Japanese.
    ///
    /// The move's raw value is `"apple-acid"`.
    static let appleAcid = AppleAcidMove.move
}

enum AppleAcidMove {
    static let move = PokemonMove(rawValue: "apple-acid")
    static let parameters = PokemonMove.Parameters(
        type: .grass,
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
        introducedIn: .viii,
        parameterHistory: [
            .init(
                versionGroups: [.swordShield, .brilliantDiamondShiningPearl, .legendsArceus, .scarletViolet, .champions],
                parameters: parameters
            ),
        ],
        localizedNames: [
            .english: "Apple Acid",
            .japanese: "りんごさん",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let appleAcid = AppleAcidMove.definition
}
