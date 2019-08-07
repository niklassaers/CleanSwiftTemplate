import UIKit
@testable import YourApp

class ConnectionOverviewViewControllerFake {

}

extension ConnectionOverviewViewControllerFake: ConnectionOverviewViewControllerProtocol {

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
