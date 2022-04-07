//
//  AboutColleagueView.swift
//  Navigationator (iOS)
//
//  Created by Frank Solleveld on 07/04/2022.
//

import SwiftUI

struct AboutColleagueView: View {
  @EnvironmentObject var router: AboutViewsRouter
    var body: some View {
      ZStack {
        Color.yellow
          .ignoresSafeArea()
        VStack {
          Text("John van de Water")
            .foregroundColor(.white)
            .padding(.bottom, 15)
          Button(
            action: {
              router.popTo(view: AboutViews.shared.personalScreen)
            },
            label: {
              Text("Back to Personal")
                .bold()
                .foregroundColor(.blue)
            }
          )
          Button(
            action: {
              router.popToRoot()
            },
            label: {
              Text("Back to Root")
                .bold()
                .foregroundColor(.blue)
            }
          )
        }
      }
    }
}

struct AboutColleagueView_Previews: PreviewProvider {
    static var previews: some View {
        AboutColleagueView()
    }
}
