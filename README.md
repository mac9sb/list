# SwiftList

[![Swift Package Index](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmaclong9%2Flist%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/maclong9/list)

A simple and fast rebuild of the UNIX `ls` command.

## Usage

```sh
sls [OPTIONS] [<path>]
```

## Options

### Display Options
- `-a, --all` — Display all files, including hidden
- `-l, --long` — Display file attributes, one file per line
- `-o, --one-line` — Display each file on its own line
- `-d, --directory` — List directories themselves, not their contents

### Formatting Options
- `-c, --color` — Colorize the output
- `-i, --icons` — Display icons denoting file type
- `-F, --classify` — Append indicator (/, *, etc.) to entries
- `--human-readable` — Display human readable file sizes (KB, MB, GB)

### Sorting Options
- `-t, --sort-time` — Sort by modification time (newest first)
- `-S, --sort-size` — Sort by file size (largest first)

### Navigation Options
- `-r, --recurse` — Recurse into directories

### Help
- `--help` — Show help information
- `--version` — Display version information

## Common Usage

```sh
# Basic listing
sls

# Detailed view with colors and icons
sls -cli --human-readable

# Recursive exploration
sls -clir --human-readable

# Sort by time or size
sls -tcli --human-readable    # by time
sls -cliS --human-readable    # by size
```
