import Foundation

class QueryEditorInteractor {
    
    weak var presenter: QueryEditorPresenterProtocol?
    lazy var entityGateway: QueryEditorEntityGatewayProtocol = QueryEditorEntityGateway(interactor: self)
    
    init(presenter: QueryEditorPresenterProtocol) {
        self.presenter = presenter
    }
    
}

extension QueryEditorInteractor: QueryEditorInteractorProtocol {
    
    // From Presenter
    
    // From EntityGateway
}
