import UIKit
@testable import YourApp

class SetPriceViewControllerDummy {
    
}

extension SetPriceViewControllerDummy: SetPriceViewControllerProtocol {
    
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
