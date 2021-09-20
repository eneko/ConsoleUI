//
//  MySwiftUIView.swift
//  ConsoleUI
//
//  Created by Eneko Alonso on 6/20/19.
//

import SwiftUI
import Stripes

struct MySwiftUIView : View {
    let gradientStart = Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
    let gradientEnd = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    let petalLength: CGFloat = 400

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [gradientStart, gradientEnd]),
                           startPoint: .top, endPoint: .bottom)

            Stripes(config: StripesConfig(background: Color.white.opacity(0.1),
                                          foreground: Color.white.opacity(0.1),
                                          degrees: 0,
                                          barWidth: 258,
                                          barSpacing: 100))

            ForEach(0..<8) { index in
                RoundedRectangle(cornerRadius: petalLength / 2)
                    .frame(width: petalLength, height: petalLength / 2)
                    .offset(x: petalLength / 2, y: 0)
                    .opacity(0.4 + 0.05 * Double(index))
                    .rotationEffect(Angle(degrees: Double(index) * 45))
            }

            ForEach(0..<8) { index in
                Circle()
                    .frame(width: petalLength / 4, height: petalLength / 4)
                    .offset(x: petalLength * 0.75, y: 0)
                    .opacity(0.4 + 0.05 * Double(index))
                    .rotationEffect(Angle(degrees: Double(index) * 45))
            }
        }
    }
}

#if DEBUG
struct MySwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
            .frame(width: 1024, height: 1024)
    }
}
#endif
