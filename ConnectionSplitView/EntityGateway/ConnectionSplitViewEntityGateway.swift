import Foundation

class ConnectionSplitViewEntityGateway {
    
    weak var interactor: ConnectionSplitViewInteractorProtocol?
    
    init(interactor: ConnectionSplitViewInteractorProtocol) {
        self.interactor = interactor
    }
}

extension ConnectionSplitViewEntityGateway : ConnectionSplitViewEntityGatewayProtocol {
    
}
