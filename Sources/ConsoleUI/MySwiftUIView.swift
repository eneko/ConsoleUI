//
//  MySwiftUIView.swift
//  ConsoleUI
//
//  Created by Eneko Alonso on 6/20/19.
//

import SwiftUI

struct MySwiftUIView : View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            Text("Hello, world!").color(.red).font(.largeTitle)
        }
    }
}

#if DEBUG
struct MySwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}
#endif
