import UIKit
import SwiftUI

class AboutViews {
    static let shared = AboutViews()
    
    private init() {}
    
    let personalScreen = UIHostingController(rootView: AboutView())
}

class AboutViewsRouter: Router {
    var nav: UINavigationController?
    
    func pushTo(view: UIViewController) {
        nav?.pushViewController(view, animated: true)
    }
    
    func popTo(view: UIViewController) {
        nav?.popToViewController(view, animated: true)
    }
}
