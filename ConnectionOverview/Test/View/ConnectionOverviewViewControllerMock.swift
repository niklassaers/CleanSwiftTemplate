import UIKit
@testable import YourApp

class ConnectionOverviewViewControllerMock {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension ConnectionOverviewViewControllerMock: VerifiableMock {
	func verify() -> Bool {
		return false
	}
}

extension ConnectionOverviewViewControllerMock: ConnectionOverviewViewControllerProtocol {

	var eventHandler: ConnectionOverviewEventHandlerProtocol {
		get {
			getEventHandlerCalled = true
			return ConnectionOverviewEventHandlerDummy()
		}
	}

	var viewModel: ConnectionOverviewViewModel {
		get {
			getViewModelCalled = true

            let viewModel = ConnectionOverviewViewModel()
            return viewModel
		}
		set {
			setViewModelCalled = true
		}
	}
}
