import Foundation

final public class SetPriceInteractor {

    lazy var system: System? = System.singleton() // Should be lazy weak var, but compiler complains
    weak var presenter: SetPricePresenterProtocol?
    lazy var entityGateway: SetPriceEntityGatewayProtocol? = self.setupEntityGateway()

    public init(presenter: SetPricePresenterProtocol? = nil) {
        if presenter != nil {
            self.presenter = presenter
        }
    }

    private func setupEntityGateway() -> SetPriceEntityGatewayProtocol? {
        if let system = system {
            return SetPriceEntityGateway(system: system, interactor: self)
        }

        return nil
    }
    
}

extension SetPriceInteractor: SetPriceInteractorProtocol {

}

