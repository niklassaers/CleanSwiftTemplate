import UIKit
@testable import YourApp

class QueryEditorViewControllerSpy {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension QueryEditorViewControllerSpy: QueryEditorViewControllerProtocol {

	var eventHandler: QueryEditorEventHandlerProtocol {
		get {
			getEventHandlerCalled = true
			return QueryEditorEventHandlerDummy()
		}
	}

	var viewModel: QueryEditorViewModel {
		get {
			getViewModelCalled = true
            
            let viewModel = QueryEditorViewModel()
            return viewModel
		}
		set {
			setViewModelCalled = true
		}
	}
}
