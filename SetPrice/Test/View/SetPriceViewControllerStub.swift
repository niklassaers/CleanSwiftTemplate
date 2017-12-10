import UIKit
@testable import YourApp

class SetPriceViewControllerStub {

}

extension SetPriceViewControllerStub: SetPriceViewControllerProtocol {

	var eventHandler: SetPriceEventHandlerProtocol {
		get {
			return SetPriceEventHandlerDummy()
		}
	}

	var viewModel: SetPriceViewModel? {
		get {
			return nil
		}
		set {

		}
	}
}
