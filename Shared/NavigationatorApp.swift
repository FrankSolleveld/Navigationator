//
//  NavigationatorApp.swift
//  Shared
//
//  Created by Frank Solleveld on 07/04/2022.
//

import SwiftUI

@main
struct NavigationatorApp: App {

  let nav = NavigationControllers()
  let router = AboutViewsRouter()

    var body: some Scene {
        WindowGroup {
          RootNavigationController(
            nav: nav.aboutNavigationController,
            rootView: ContentView()
          )
          .environmentObject(router)
          .onAppear {
            router.nav = nav.aboutNavigationController
          }
        }
    }
}
