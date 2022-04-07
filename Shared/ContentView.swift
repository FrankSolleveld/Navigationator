//
//  ContentView.swift
//  Shared
//
//  Created by Frank Solleveld on 07/04/2022.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var router: AboutViewsRouter
    var body: some View {
      VStack {
        Text("Root About View")
            .padding()
        Button(
          action: {
            router.pushTo(view: AboutViews.shared.personalScreen)
          },
          label: {
            Text("About Me")
          }
        )
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
