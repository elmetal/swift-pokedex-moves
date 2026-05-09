import Foundation

public extension PokemonMove.Category {
    /// A format style that renders localized move category names.
    struct FormatStyle: Foundation.FormatStyle, Sendable {
        public typealias FormatInput = PokemonMove.Category
        public typealias FormatOutput = String

        /// The locale used to choose a localized category name.
        public var locale: Locale

        /// Creates a move category format style.
        public init(locale: Locale = .current) {
            self.locale = locale
        }

        /// Formats a move category as a localized name.
        public func format(_ value: PokemonMove.Category) -> String {
            switch (value, locale.language.languageCode) {
            case (.physical, .japanese):
                "物理"
            case (.special, .japanese):
                "特殊"
            case (.status, .japanese):
                "変化"
            case (.physical, _):
                "Physical"
            case (.special, _):
                "Special"
            case (.status, _):
                "Status"
            }
        }
    }

    /// Formats the category using the current locale.
    func formatted() -> String {
        formatted(.init())
    }

    /// Formats the category using the provided locale.
    func formatted(locale: Locale) -> String {
        formatted(.init(locale: locale))
    }

    /// Formats the category using a category format style.
    func formatted(_ style: FormatStyle) -> String {
        style.format(self)
    }
}
