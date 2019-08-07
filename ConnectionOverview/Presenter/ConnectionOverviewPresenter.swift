import Foundation

class ConnectionOverviewPresenter {
    
    //var view: ConnectionOverviewViewProtocol?
    let viewModel: ConnectionOverviewViewModel
    lazy var interactor: ConnectionOverviewInteractorProtocol = ConnectionOverviewInteractor(presenter: self)
    
    
    init(viewModel: ConnectionOverviewViewModel) {
        self.viewModel = viewModel
        print("Initialize ConnectionOverviewPresenter")
    }

    /*
    init(view: ConnectionOverviewViewProtocol) {
        self.view = view
        
        print("Initialize ConnectionOverviewPresenter")
    }
     */

}

extension ConnectionOverviewPresenter: ConnectionOverviewEventHandlerProtocol {
    func doSomething() {
        print("did something...")
        
        let newNode = NodeViewModel(labels: ["Well hello"])
        self.viewModel.favouriteNodes.append(newNode)
    }

    func deleteFavorite(at offsets: IndexSet) {
        if let first = offsets.first {
            self.viewModel.favouriteNodes.remove(at: first)
        }
    }
}

extension ConnectionOverviewPresenter: ConnectionOverviewPresenterProtocol {
    
}
