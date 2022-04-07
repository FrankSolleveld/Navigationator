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
//          Button(
//            action: {
//              router.popToRoot()
//            },
//            label: {
//              Text("Back to Root")
//                .foregroundColor(.white)
//            }
//          )
        }
      }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
