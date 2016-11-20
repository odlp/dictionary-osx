# OSX Dictionary CLI

Access the Mac OSX Dictionary app via the command line.

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