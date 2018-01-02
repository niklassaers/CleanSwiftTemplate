import Foundation

class SetPriceEntityGateway {

    weak var interactor: SetPriceInteractorProtocol?

    init(interactor: SetPriceInteractorProtocol) {
        self.interactor = interactor
    }
}

extension SetPriceEntityGateway : SetPriceEntityGatewayProtocol {

}
