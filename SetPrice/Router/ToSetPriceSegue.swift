import UIKit

class ToSetPriceSegue: UIStoryboardSegue {

    static func build(withView view: SetPriceViewControllerProtocol, configuration: SetPriceConfiguration? = nil) -> SetPriceModule {

        let eventHandler = view.eventHandler
        guard
            let presenter = eventHandler as? SetPricePresenter,
            let interactor = presenter.interactor as? SetPriceInteractor,
            let entityGateway = interactor.entityGateway as? SetPriceEntityGateway,
            let router = presenter.router
            else {
                print("Unexepcted module setup")
                fatalError()
        }

        presenter.router = router

        // Apply configuration here

        let module = SetPriceModule(
            view: view,
            presenter: presenter,
            eventHandler: eventHandler,
            interactor: interactor,
            entityGateway: entityGateway,
            router: router)

        return module
    }

    // MARK: Convenience functions

    var typedDestination: SetPriceViewController {
        get {
            if let dst = self.destination as? SetPriceViewController {
                return dst
            } else {
                print("Segue destination should be SetPriceViewController")
                fatalError()
            }
        }
    }

    static func build(fromViewController: UIViewController, identifier: String = "SetPriceViewController", configuration: SetPriceConfiguration? = nil) -> SetPriceModule {
        guard let storyboard = fromViewController.storyboard,
            let view = storyboard.instantiateViewController(withIdentifier: identifier) as? SetPriceViewControllerProtocol
            else {
                print("Could not get SetPriceViewController from Storyboard")
                fatalError()
        }

        return build(withView: view, configuration: configuration)

    }

    static func build(fromViewController: UIViewController, nibName: String = "SetPriceViewController", configuration: SetPriceConfiguration? = nil) -> SetPriceModule {
        let bundle = Bundle(for: ToSetPriceSegue.self)
        guard let view = UIViewController(nibName: nibName, bundle: bundle) as? SetPriceViewControllerProtocol
            else {
                print("Could not get SetPriceViewController from NIB")
                fatalError()
        }

        return build(withView: view, configuration: configuration)
    }

    func build(configuration: SetPriceConfiguration? = nil) -> SetPriceModule {
        return build(withView: self.typedDestination, configuration: configuration)
    }

    func build(withView view: SetPriceViewControllerProtocol, configuration: SetPriceConfiguration? = nil) -> SetPriceModule {
        return ToSetPriceSegue.build(withView:view, configuration:configuration)
    }
}
