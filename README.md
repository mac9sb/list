# List

A modern replacement for the `ls` command with enhanced features, built with Swift.

## Overview

List provides a simple and fast way to list directory contents with:

- **Color Output**: Syntax highlighting for different file types
- **File Icons**: Visual indicators for file types
- **Human-Readable Sizes**: Easy-to-read file sizes
- **Flexible Sorting**: Sort by name, size, or modification time
- **Cross-Platform**: Works on macOS and Linux

## Getting Started

### Installation

Build List from source:

```bash
git clone https://github.com/mac9sb/list.git
cd list
swift build -c release
cp .build/release/sls /usr/local/bin/
```

Or download a pre-built binary from the [releases page](https://github.com/mac9sb/list/releases).

### Basic Usage

List files in the current directory:

```bash
sls
```

List files in a specific directory:

```bash
sls /path/to/directory
```

### Options

- `--long`, `-l`: Use long format with detailed information
- `--all`, `-a`: Show hidden files
- `--sort=name|size|time`: Sort by name, size, or modification time
- `--help`, `-h`: Show help information

### Examples

```bash
# Long format
sls --long

# Show hidden files
sls --all

# Sort by modification time
sls --sort=time

# Combine options
sls --long --sort=time
```

## Architecture

List is built as a Swift command-line tool using:

- **Swift Argument Parser**: For command-line argument handling
- **Swift System**: For file system operations
- **Terminal Colors**: For colored output

## Development

To contribute to List:

1. Clone the repository
2. Build the project: `swift build`
3. Run tests: `swift test`
4. Build documentation: `swift package generate-documentation`

## License

See LICENSE file for details.
