import UIKit
@testable import YourApp

class ConnectionSplitViewViewControllerDummy {

}

extension ConnectionSplitViewViewControllerDummy: ConnectionSplitViewViewControllerProtocol {

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
