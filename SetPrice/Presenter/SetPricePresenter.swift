import UIKit

class SetPricePresenter {

    weak var view: SetPriceViewControllerProtocol?
    lazy var interactor: SetPriceInteractorProtocol = SetPriceInteractor(presenter: self)
    lazy var router: (NSObjectProtocol & SetPriceRouterProtocol)? = self.setupRouter()

    init(view: SetPriceViewControllerProtocol) {
        self.view = view
    }

    func setupRouter() -> (NSObjectProtocol & SetPriceRouterProtocol)? {
        if let view = self.view as? SetPriceViewController {
            return SetPriceRouter(viewController: view)
        } else {
            return nil
        }
    }
}

extension SetPricePresenter: SetPriceEventHandlerProtocol {
    func willAppear(withPresentationModel: SetPricePresentationModel) {
        //TODO: Implement
    }

    func prepare(for segue: UIStoryboardSegue) {
        /*
        if let segue = segue as? ToXXXSegue,
           let router = router,
           let scene = segue.identifier {
            let selector = NSSelectorFromString("prepareFor\(scene)WithSegue:")
            if router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
         */
    }
}

extension SetPricePresenter: SetPricePresenterProtocol {

}
