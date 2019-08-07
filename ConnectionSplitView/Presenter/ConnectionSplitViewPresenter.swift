import Foundation

class ConnectionSplitViewPresenter {
    
    //var view: ConnectionSplitViewViewProtocol?
    let viewModel: ConnectionSplitViewViewModel
    lazy var interactor: ConnectionSplitViewInteractorProtocol = ConnectionSplitViewInteractor(presenter: self)
    
    
    init(viewModel: ConnectionSplitViewViewModel) {
        self.viewModel = viewModel
        print("Initialize ConnectionSplitViewPresenter")
    }

    /*
    init(view: ConnectionSplitViewViewProtocol) {
        self.view = view
        
        print("Initialize ConnectionSplitViewPresenter")
    }
     */

}

extension ConnectionSplitViewPresenter: ConnectionSplitViewEventHandlerProtocol {
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

extension ConnectionSplitViewPresenter: ConnectionSplitViewPresenterProtocol {
    
}
