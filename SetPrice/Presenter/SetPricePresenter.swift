import Foundation

class SetPricePresenter {

    weak var view: SetPriceViewControllerProtocol?
    lazy var interactor: SetPriceInteractorProtocol = SetPriceInteractor(presenter: self)
	weak var router: Routable?

    init(view: SetPriceViewControllerProtocol) {
        self.view = view
    }

}

extension SetPricePresenter: SetPriceEventHandlerProtocol {

}

extension SetPricePresenter: SetPricePresenterProtocol {

}
