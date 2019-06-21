//
//  MySwiftUIView.swift
//  ConsoleUI
//
//  Created by Eneko Alonso on 6/20/19.
//

import SwiftUI

struct MySwiftUIView : View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/).color(.red)
    }
}

#if DEBUG
struct MySwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}
#endif
