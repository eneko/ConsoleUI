import AppKit
import SwiftUI

func rasterize(view: NSView, format: NSBitmapImageRep.FileType) -> Data? {
    guard let bitmapRepresentation = view.bitmapImageRepForCachingDisplay(in: view.bounds) else {
        return nil
    }
    bitmapRepresentation.size = view.bounds.size
    view.cacheDisplay(in: view.bounds, to: bitmapRepresentation)
    return bitmapRepresentation.representation(using: format, properties: [:])
}


let wrapper = NSHostingView(rootView: MySwiftUIView())
wrapper.frame = CGRect(x: 0, y: 0, width: 800, height: 450)

let png = rasterize(view: wrapper, format: .png)
try png?.write(to: URL(fileURLWithPath: "test.png"))
