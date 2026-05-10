import Foundation

public extension PokemonMove {
    /// The Pokemon move known as アクセルブレイク in Japanese.
    ///
    /// The localized name of this move is `"Collision Course"` in English and
    /// `"アクセルブレイク"` in Japanese.
    ///
    /// The move's raw value is `"collision-course"`.
    static let collisionCourse = CollisionCourseMove.move
}

enum CollisionCourseMove {
    static let move = PokemonMove(rawValue: "collision-course")
    static let parameters = PokemonMove.Parameters(
        type: .fighting,
        pp: 5,
        power: .fixed(100),
        hits: .one,
        accuracy: .percent(100),
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
            .english: "Collision Course",
            .japanese: "アクセルブレイク",
        ]
    )
}

public extension PokemonMoveDefinitions {
    static let collisionCourse = CollisionCourseMove.definition
}
