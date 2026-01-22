# List (sls)

A modern, fast replacement for the UNIX `ls` command written in Swift.

## Overview

List provides a simple and fast way to list directory contents with:

- **Color Output**: Syntax-highlighted file listings
- **File Icons**: Visual indicators for different file types
- **Human-Readable Sizes**: Formatted file sizes (KB, MB, GB)
- **Flexible Sorting**: Sort by name, time, or size
- **Recursive Listing**: List directories recursively

## Getting Started

See the ``GettingStarted`` tutorial to learn how to use List.

## Usage

```bash
sls [path] [options]
```

### Options

- `--all`, `-a`: Show hidden files
- `--long`, `-l`: Use long format
- `--recurse`, `-r`: List directories recursively
- `--sort`: Sort by `name`, `time`, or `size`

### Examples

```bash
sls
sls /usr/local
sls --long --sort=time
sls --recurse --all
```
