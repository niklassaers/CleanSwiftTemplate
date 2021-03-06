import Foundation

class ConnectionOverviewPresenter {
    
    let viewModel: ConnectionOverviewViewModel
    lazy var interactor: ConnectionOverviewInteractorProtocol = ConnectionOverviewInteractor(presenter: self)
    
    init(viewModel: ConnectionOverviewViewModel) {
        self.viewModel = viewModel
    }

}

extension ConnectionOverviewPresenter: ConnectionOverviewEventHandlerProtocol {

}

extension ConnectionOverviewPresenter: ConnectionOverviewPresenterProtocol {
    
}
