import Foundation

/// Represents a file with visual formatting information.
///
/// Contains the icon, color, and optional symbolic link destination for
/// displaying files in the terminal with appropriate visual indicators.
///
/// ## Example
///
/// ```swift
/// let file = FileRepresentation(
///     icon: "📁",
///     color: TerminalColors.blue.rawValue,
///     destination: nil
/// )
/// ```
public struct FileRepresentation {
    /// The emoji icon representing the file type.
    ///
    /// Examples: 📁 for directories, 📄 for files, 🔗 for symbolic links.
    public let icon: String

    /// The ANSI color code for terminal output.
    ///
    /// Used to colorize file names in terminal output based on file type.
    public let color: String

    /// The destination path for symbolic links.
    ///
    /// `nil` for regular files and directories. Contains the target path
    /// for symbolic links.
    public let destination: String?

    /// Creates a new file representation.
    ///
    /// - Parameters:
    ///   - icon: The emoji icon representing the file type.
    ///   - color: The ANSI color code for terminal output.
    ///   - destination: The destination path for symbolic links, or `nil` for regular files.
    public init(icon: String, color: String, destination: String? = nil) {
        self.icon = icon
        self.color = color
        self.destination = destination
    }
}
