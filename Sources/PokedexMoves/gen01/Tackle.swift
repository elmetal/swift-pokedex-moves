import Foundation
import PokemonTypes

public extension PokemonMove {
    /// The Pokemon move known as たいあたり in Japanese.
    ///
    /// The localized name of this move is `"Tackle"` in English and
    /// `"たいあたり"` in Japanese.
    ///
    /// Use this value when you need to refer to Tackle by its canonical move
    /// identifier.
    ///
    /// ```swift
    /// let move = PokemonMove.tackle
    /// ```
    ///
    /// The move's raw value is `"tackle"`.
    static let tackle = Tackle.move
}

enum Tackle: PokemonMoveDefinition {
    static let move = PokemonMove(rawValue: "tackle")
    static let introducedIn = PokemonGeneration.i
    static let type = PokemonType.normal
    static let pp = 35
    static let power: Int? = 40
    static let accuracy: Int? = 100
    static let priority = 0
    static let category = PokemonMoveCategory.physical

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "たいあたり"
        default:
            "Tackle"
        }
    }
}
