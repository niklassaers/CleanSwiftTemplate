import UIKit
@testable import YourApp

class ConnectionOverviewViewControllerSpy {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension ConnectionOverviewViewControllerSpy: ConnectionOverviewViewControllerProtocol {

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
