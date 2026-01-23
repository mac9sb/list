import ArgumentParser
import Foundation

/// Options for sorting file listings.
///
/// Defines how files should be sorted when listing directory contents.
///
/// ## Example
///
/// ```swift
/// let options = DisplayOptions(sortBy: .time)
/// ```
public enum SortOption: String, ExpressibleByArgument {
    /// Sort files alphabetically by name (default).
    case name

    /// Sort files by modification time, most recent first.
    case time

    /// Sort files by size, largest first.
    case size
}
