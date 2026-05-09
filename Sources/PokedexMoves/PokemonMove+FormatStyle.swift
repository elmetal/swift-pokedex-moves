import Foundation

public extension PokemonMove {
    /// A format style that renders localized move names.
    struct FormatStyle: Foundation.FormatStyle, Sendable {
        public typealias FormatInput = PokemonMove
        public typealias FormatOutput = String

        /// The locale used to choose a localized move name.
        public var locale: Locale

        /// Creates a move name format style.
        public init(locale: Locale = .current) {
            self.locale = locale
        }

        /// Formats a move as a localized name.
        public func format(_ value: PokemonMove) -> String {
            PokemonMoveDefinitions.definition(for: value)?.name(locale: locale)
                ?? value.rawValue
        }
    }

    /// Formats the move using the current locale.
    func formatted() -> String {
        formatted(.init())
    }

    /// Formats the move using the provided locale.
    func formatted(locale: Locale) -> String {
        formatted(.init(locale: locale))
    }

    /// Formats the move using a move format style.
    func formatted(_ style: FormatStyle) -> String {
        style.format(self)
    }
}
