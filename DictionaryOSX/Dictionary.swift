import Foundation

class Dictionary {

    func quickFindEntry(term: String) -> TTTDictionaryEntry? {
        return findEntry(term, dictionary: DCSOxfordDictionaryOfEnglish) ?? findEntry(term, dictionary: DCSOxfordThesaurusOfEnglish)
    }

    func findEntry(term: String, dictionary: String) -> TTTDictionaryEntry? {
        let dictionary = TTTDictionary.init(named: dictionary)
        let entries = dictionary.entriesForSearchTerm(term) as? [TTTDictionaryEntry]
        return entries?.first
    }
}

class DictionaryEntryParser {

    func findSpeechPart(entry: TTTDictionaryEntry) -> String? {
        let entryParts = entry.text.characters.split("▶")
        guard entryParts.count > 1 else { return nil }

        return entryParts[1].split(" ").first.map({ String($0) })
    }

}
