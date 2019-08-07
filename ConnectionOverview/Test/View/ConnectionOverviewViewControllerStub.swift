import UIKit
@testable import YourApp

class ConnectionOverviewViewControllerStub {

}

extension ConnectionOverviewViewControllerStub: ConnectionOverviewViewControllerProtocol {

	var eventHandler: ConnectionOverviewEventHandlerProtocol {
		get {
			return ConnectionOverviewEventHandlerDummy()
		}
	}

	var viewModel: ConnectionOverviewViewModel {
		get {
            let viewModel = ConnectionOverviewViewModel()
			return viewModel
		}
		set {

		}
	}
}
