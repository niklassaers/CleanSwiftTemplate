import Foundation

class ConnectionOverviewEntityGateway {
    
    weak var interactor: ConnectionOverviewInteractorProtocol?
    
    init(interactor: ConnectionOverviewInteractorProtocol) {
        self.interactor = interactor
    }
}

extension ConnectionOverviewEntityGateway : ConnectionOverviewEntityGatewayProtocol {
    
}
