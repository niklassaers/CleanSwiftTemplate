import Foundation

class SetPriceInteractor {

    weak var presenter: SetPricePresenterProtocol?
    lazy var entityGateway: SetPriceEntityGatewayProtocol = SetPriceEntityGateway(interactor: self)

    init(presenter: SetPricePresenterProtocol) {
        self.presenter = presenter
    }

}

extension SetPriceInteractor: SetPriceInteractorProtocol {

    // In
    
    // Out
    
}

