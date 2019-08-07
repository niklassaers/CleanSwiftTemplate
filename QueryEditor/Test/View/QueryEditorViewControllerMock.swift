import UIKit
@testable import YourApp

class QueryEditorViewControllerMock {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension QueryEditorViewControllerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension QueryEditorViewControllerMock: QueryEditorViewControllerProtocol {

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
