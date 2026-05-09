import Foundation

public extension PokemonMove {
    struct FormatStyle: Foundation.FormatStyle, Sendable {
        public typealias FormatInput = PokemonMove
        public typealias FormatOutput = String

        public var locale: Locale

        public init(locale: Locale = .current) {
            self.locale = locale
        }

        public func format(_ value: PokemonMove) -> String {
            PokemonMoveDefinitions.definition(for: value)?.name(locale: locale)
                ?? value.rawValue
        }
    }

    func formatted() -> String {
        formatted(.init())
    }

    func formatted(locale: Locale) -> String {
        formatted(.init(locale: locale))
    }

    func formatted(_ style: FormatStyle) -> String {
        style.format(self)
    }
}
