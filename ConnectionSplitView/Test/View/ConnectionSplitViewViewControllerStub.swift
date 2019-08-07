import UIKit
@testable import YourApp

class ConnectionSplitViewViewControllerStub {

}

extension ConnectionSplitViewViewControllerStub: ConnectionSplitViewViewControllerProtocol {

	var eventHandler: ConnectionSplitViewEventHandlerProtocol {
		get {
			return ConnectionSplitViewEventHandlerDummy()
		}
	}

	var viewModel: ConnectionSplitViewViewModel {
		get {
            let viewModel = ConnectionSplitViewViewModel()
			return viewModel
		}
		set {

		}
	}
}
