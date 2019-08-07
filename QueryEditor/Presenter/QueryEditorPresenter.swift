import Foundation

class QueryEditorPresenter {
    
    //var view: QueryEditorViewProtocol?
    let viewModel: QueryEditorViewModel
    lazy var interactor: QueryEditorInteractorProtocol = QueryEditorInteractor(presenter: self)
    
    
    init(viewModel: QueryEditorViewModel) {
        self.viewModel = viewModel
        print("Initialize QueryEditorPresenter")
    }

    /*
    init(view: QueryEditorViewProtocol) {
        self.view = view
        
        print("Initialize QueryEditorPresenter")
    }
     */

}

extension QueryEditorPresenter: QueryEditorEventHandlerProtocol {
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

extension QueryEditorPresenter: QueryEditorPresenterProtocol {
    
}
