# OSX Dictionary CLI

Access the Mac OSX Dictionary app via the command line.

## Installation

- [Download the latest release](https://github.com/odlp/dictionary-osx/releases). Only available for OSX (tested on El Capitan).
- Place the binary on your path, e.g. `/usr/local/bin/dictionary `

Alternatively you can build the project with Xcode 7.3 or later. After running the build (`⌘R`), right click on the `Products` group and select `Show in Finder`.

## Usage

```sh
dictionary cat
# cat 1 |kat| ▶noun 1 a small domesticated carnivorous mammal with soft fur...
```

### Formats

Adjust the output with `-f` or `--format` flags:

- `text`: Plaintext output
- `html`: Default Dictionary.app output
- `speech-part`: Parses the speech part of the first definition (e.g. noun, verb)

## Background

This CLI uses [DictionaryKit](https://github.com/mattt/DictionaryKit) to fetch definitions via private Dictionary Services on OSX. This private API usage is not suitable for App Store apps. Read more background about [dictionary services on NSHipster](http://nshipster.com/dictionary-services/).
