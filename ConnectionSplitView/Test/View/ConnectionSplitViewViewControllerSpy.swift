import UIKit
@testable import YourApp

class ConnectionSplitViewViewControllerSpy {

	var getEventHandlerCalled = false
	var getViewModelCalled = false
	var setViewModelCalled = false

}

extension ConnectionSplitViewViewControllerSpy: ConnectionSplitViewViewControllerProtocol {

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
