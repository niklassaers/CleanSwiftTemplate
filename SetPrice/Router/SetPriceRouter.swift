import UIKit

class SetPriceRouter: NSObject {

    var routeModel: SetPriceRouteModel?
    let fromViewController: SetPriceViewController

    init(viewController: SetPriceViewController) {
        self.fromViewController = viewController

        super.init()
    }
}

extension SetPriceRouter: SetPriceRouterProtocol {

    func prepareForXXX(segue: ToXXXSegue) {
        let configuration = SetPriceConfiguration()
        let module = segue.build(withView: segue.typedDestination, configuration: configuration)

        let presentationModel = XXXPresentationModel()
        module.eventHandler.willAppear(withPresentationModel: presentationModel)

    }

    func routeToXXXViaSegue(segueIdentifier: String = "XXX") {
        self.fromViewController.performSegue(withIdentifier: segueIdentifier, sender: fromViewController)
    }

    // Alternative: use navigation controller rather than segue
    func routeToXXXViaNavigationController(viewControllerIdentifier: String = "XXXViewController") {
        let configuration = SetPriceConfiguration()
        let module = ToXXXSegue.build(fromViewController: self.fromViewController, identifier: viewControllerIdentifier, configuration: configuration)

        let presentationModel = XXXPresentationModel()
        module.eventHandler.willAppear(withPresentationModel: presentationModel)

        if let navCtl = self.fromViewController.navigationController,
           let viewController = module.view as? XXXViewController {
            navCtl.pushViewController(viewController, animated: true)
        }
    }
}
