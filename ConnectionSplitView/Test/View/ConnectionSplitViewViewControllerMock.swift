import UIKit
@testable import YourApp

class ConnectionSplitViewViewControllerMock {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension ConnectionSplitViewViewControllerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionSplitViewViewControllerMock: ConnectionSplitViewViewControllerProtocol {

	var eventHandler: ConnectionSplitViewEventHandlerProtocol {
		get {
			getEventHandlerCalled = true
			return ConnectionSplitViewEventHandlerDummy()
		}
	}

	var viewModel: ConnectionSplitViewViewModel {
		get {
			getViewModelCalled = true

            let viewModel = ConnectionSplitViewViewModel()
            return viewModel
		}
		set {
			setViewModelCalled = true
		}
	}
}
