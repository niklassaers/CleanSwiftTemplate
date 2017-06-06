import Foundation

final public class SetPricePresenter {

    weak var view: SetPriceViewControllerProtocol?
    lazy var interactor: SetPriceInteractorProtocol? = self.setupInteractor()
    lazy var system: System? = System.singleton() // Should be lazy weak var, but compiler complains

    public init(view: SetPriceViewControllerProtocol? = nil) {
        if view != nil {
            self.view = view
        }
    }

    private func setupInteractor() -> SetPriceInteractorProtocol? {
        return SetPriceInteractor(presenter: self)
    }

}

extension SetPricePresenter: SetPriceEventHandlerProtocol {
    
}

extension SetPricePresenter: SetPricePresenterProtocol {

}

