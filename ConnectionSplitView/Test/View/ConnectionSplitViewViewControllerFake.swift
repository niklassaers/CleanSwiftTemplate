import UIKit
@testable import YourApp

class ConnectionSplitViewViewControllerFake {

}

extension ConnectionSplitViewViewControllerFake: ConnectionSplitViewViewControllerProtocol {

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
