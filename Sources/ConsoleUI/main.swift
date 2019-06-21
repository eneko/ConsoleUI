
import AppKit
import SwiftUI

let frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)

let view = MySwiftUIView()
let wrapper = NSHostingView(rootView: view)
wrapper.frame = frame
print(wrapper.frame)

func rasterize(view: NSView, format: NSBitmapImageRep.FileType) -> Data? {
    guard let bitmapRepresentation = view.bitmapImageRepForCachingDisplay(in: view.bounds) else {
        return nil
    }
    bitmapRepresentation.size = view.bounds.size
    view.cacheDisplay(in: view.bounds, to: bitmapRepresentation)
    return bitmapRepresentation.representation(using: format, properties: [:])
}

let png = rasterize(view: wrapper, format: .png)
try png?.write(to: URL(fileURLWithPath: "test.png"))
