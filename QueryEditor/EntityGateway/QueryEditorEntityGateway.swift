import Foundation

class QueryEditorEntityGateway {
    
    weak var interactor: QueryEditorInteractorProtocol?
    
    init(interactor: QueryEditorInteractorProtocol) {
        self.interactor = interactor
    }
}

extension QueryEditorEntityGateway : QueryEditorEntityGatewayProtocol {
    
}
