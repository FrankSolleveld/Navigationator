import UIKit
import Combine

protocol Router: ObservableObject {
    var nav: UINavigationController? { get set }
    func pushTo(view: UIViewController)
    func popTo(view: UIViewController)
    func popToRoot()
}

extension Router {
    func popToRoot() {
        nav?.popToRootViewController(animated: true)
    }
}
