//
//  ContentView.swift
//  bullseye
//
//  Created by Dave McCollough on 8/21/22.
//

import SwiftUI

struct ContentView: View {
    
//    @State allows SwiftUI to manage state
    @State private var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .kerning(2.0)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                .bold()
            }
            Button(action: {
                print("Hello SwiftUI!")
                self.alertIsVisible = true
            }){
                Text("Hit Me!")
            }
            .alert("Hello There!", isPresented: $alertIsVisible) {
                Button("Awesome!") {}
            } message: {
                Text("This is my first popup!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
