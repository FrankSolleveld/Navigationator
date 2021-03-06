//
//  AboutView.swift
//  Navigationator (iOS)
//
//  Created by Frank Solleveld on 07/04/2022.
//

import SwiftUI

struct AboutView: View {
  @EnvironmentObject var router: AboutViewsRouter
    var body: some View {
      ZStack {
        Color.black
          .ignoresSafeArea()
        VStack {
          Text("Frank Solleveld")
            .foregroundColor(.white)
            .padding(.bottom, 15)
          Button(
            action: {
              router.pushTo(view: AboutViews.shared.colleagueScreen)
            },
            label: {
              Text("Continue to John")
                .bold()
                .foregroundColor(.blue)
            }
          )
        }
      }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
