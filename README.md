# Homebrew Tap for ICS CLI

This repository contains the Homebrew formula for [ICS CLI](https://github.com/UK2Group/ics-cli), a command-line interface for managing Ingenuity Cloud Services resources.

## Installation

```bash
# Add the tap to your Homebrew installation
brew tap UK2Group/ics-cli

# Install ics-cli
brew install ics-cli
```

## Updating
To upgrade to the latest version:

## Formula Details
The formula installs the pre-built binary for your system architecture:

Apple Silicon (M1/M2) Macs use the ARM64 build
Intel Macs use the AMD64 build

## Features
ICS CLI provides tools for managing:

Baremetal servers
SSH keys

For full documentation and usage examples, see the ICS CLI repository.

## Troubleshooting
If you encounter issues:

Update Homebrew and try again:
```bash
brew update
```
Reinstall the formula:
```bash
brew reinstall ics-cli
```

Check for issues or report a new one on the ICS CLI GitHub repository.

## License
This Homebrew tap is licensed under the MIT License.

Built with ❤️ by the Ingenuity Cloud Services Team