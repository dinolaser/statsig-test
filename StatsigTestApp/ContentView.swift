//
//  ContentView.swift
//  StatsigTestApp
//
//  Created by Daniel Loomb on 3/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Text("Hello, world!")
        Button(action: {
          let config = Statsig.getConfig(forName: "first_config")
          let gate = Statsig.checkGate(forName: "red_background_enabled")
          print("\(config.value) \(gate)")
        }) {
          Text("Click")
        }
      }.background(Statsig.checkGate(forName: "red_background_enabled") ? Color.red : nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
