import Foundation

class ConnectionOverviewInteractor {
    
    weak var presenter: ConnectionOverviewPresenterProtocol?
    lazy var entityGateway: ConnectionOverviewEntityGatewayProtocol = ConnectionOverviewEntityGateway(interactor: self)
    
    init(presenter: ConnectionOverviewPresenterProtocol) {
        self.presenter = presenter
    }
    
}

extension ConnectionOverviewInteractor: ConnectionOverviewInteractorProtocol {
    
    // From Presenter
    
    // From EntityGateway
}
