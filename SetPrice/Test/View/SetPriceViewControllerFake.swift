import UIKit
@testable import YourApp

class SetPriceViewControllerFake {

}

extension SetPriceViewControllerFake: SetPriceViewControllerProtocol {

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
