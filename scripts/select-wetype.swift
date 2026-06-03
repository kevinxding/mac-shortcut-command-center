import Carbon
import Foundation

func property(_ source: TISInputSource, _ key: CFString) -> String? {
    guard let pointer = TISGetInputSourceProperty(source, key) else {
        return nil
    }
    return Unmanaged<CFString>.fromOpaque(pointer).takeUnretainedValue() as String
}

let targetIds = [
    "com.tencent.inputmethod.wetype.pinyin",
    "com.tencent.inputmethod.wetype"
]

let sources = TISCreateInputSourceList(nil, true).takeRetainedValue() as NSArray

for item in sources {
    guard let source = item as! TISInputSource? else {
        continue
    }

    let sourceId = property(source, kTISPropertyInputSourceID) ?? ""
    let bundleId = property(source, kTISPropertyBundleID) ?? ""
    let localizedName = property(source, kTISPropertyLocalizedName) ?? ""

    if targetIds.contains(sourceId) || targetIds.contains(bundleId) || sourceId.contains("wetype") || bundleId.contains("wetype") || localizedName.contains("微信") {
        let result = TISSelectInputSource(source)
        if result == noErr {
            print("Selected input source: \(localizedName) \(sourceId)")
            exit(0)
        }
        fputs("Failed to select input source: \(result)\n", stderr)
        exit(1)
    }
}

fputs("WeType input source was not found.\n", stderr)
exit(2)
