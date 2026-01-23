import Foundation

/// ANSI terminal color codes for file type colorization.
///
/// Provides color codes for displaying different file types in terminal output.
/// Use these colors to visually distinguish files, directories, executables, and
/// symbolic links.
///
/// ## Example
///
/// ```swift
/// print("\(TerminalColors.blue.rawValue)directory\(TerminalColors.reset.rawValue)")
/// ```
public enum TerminalColors: String {
    /// White color for regular files.
    case white = "\u{001B}[0;37m"

    /// Yellow color for symbolic links.
    case yellow = "\u{001B}[0;33m"

    /// Red color for executable files.
    case red = "\u{001B}[0;31m"

    /// Blue color for directories.
    case blue = "\u{001B}[0;34m"

    /// Reset code to restore default terminal colors.
    case reset = "\u{001B}[0;0m"
}
