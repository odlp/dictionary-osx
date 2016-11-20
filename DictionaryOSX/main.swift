import Foundation

enum OutputFormat: String {
    case Text  = "text"
    case HTML = "html"
    case SpeechPart = "speech-part"
}

let cli = CommandLine()
let outputFormatFlag = EnumOption<OutputFormat>(shortFlag: "f", longFlag: "format", helpMessage: "Output format: [text|html|speech-part]")
let helpFlag = BoolOption(shortFlag: "h", longFlag: "help", helpMessage: "Prints a help message.")
cli.addOptions(outputFormatFlag, helpFlag)

do {
    try cli.parse()
} catch {
    cli.printUsage(error)
    exit(EX_USAGE)
}

if helpFlag.wasSet {
    cli.printUsage()
    exit(0)
}

guard let term = cli.unparsedArguments.first else {
    print("Please include a term to define")
    exit(1)
}


guard let entry = Dictionary().quickFindEntry(term) else {
    exit(1)
}

switch(outputFormatFlag.value ?? OutputFormat.Text) {
    case .HTML:
        print(entry.HTML)

    case .SpeechPart:
        guard let speechPart = DictionaryEntryParser().findSpeechPart(entry) else { exit(1) }
        print(speechPart)

    case .Text:
        print(entry.text)
}

