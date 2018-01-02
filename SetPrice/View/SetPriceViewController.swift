import UIKit

class SetPriceViewController: UIViewController {

    lazy var eventHandler: SetPriceEventHandlerProtocol = SetPricePresenter(view: self)
    var viewModel: SetPriceViewModel? {
    	didSet {
    		refresh()
    	}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
	}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        eventHandler.prepare(for: segue)
    }

    // MARK: Interface Builder Outlets

    // MARK: Interface Builder Actions

}

extension SetPriceViewController {

    func refresh() {
        assert(Thread.isMainThread)

    }

}

extension SetPriceViewController: SetPriceViewControllerProtocol {

}
