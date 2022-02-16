//
//  ContentView.swift
//  TutAudKit1
//
//  Created by Iurie Guzun on 2022-02-16.
//

import SwiftUI
import AudioKit

class ToneGenerator {
    let engine = AudioEngine()
    let osc = PlaygroundOscillator()
    
    init() {
        engine.output = osc
        try! engine.start()
    }
    func toggle() {
        osc.isStarted ? osc.stop() : osc.start()
     }

}



struct ContentView: View {
    
    let tonGenerator = ToneGenerator()
    
    
    var body: some View {
        Button(action: {tonGenerator.toggle()}) {
            /*@START_MENU_TOKEN@*/Text("Beep")/*@END_MENU_TOKEN@*/
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
