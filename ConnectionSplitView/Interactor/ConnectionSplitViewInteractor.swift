import Foundation

class ConnectionSplitViewInteractor {
    
    weak var presenter: ConnectionSplitViewPresenterProtocol?
    lazy var entityGateway: ConnectionSplitViewEntityGatewayProtocol = ConnectionSplitViewEntityGateway(interactor: self)
    
    init(presenter: ConnectionSplitViewPresenterProtocol) {
        self.presenter = presenter
    }
    
}

extension ConnectionSplitViewInteractor: ConnectionSplitViewInteractorProtocol {
    
    // From Presenter
    
    // From EntityGateway
}
