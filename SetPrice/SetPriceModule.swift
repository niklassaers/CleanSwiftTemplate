import Foundation

struct SetPriceModule {
    let view: SetPriceViewControllerProtocol
    let presenter: SetPricePresenterProtocol
    let eventHandler: SetPriceEventHandlerProtocol
    let interactor: SetPriceInteractorProtocol
    let entityGateway: SetPriceEntityGatewayProtocol
    let router: SetPriceRouterProtocol

    init(view: SetPriceViewControllerProtocol,
         presenter: SetPricePresenterProtocol,
         eventHandler: SetPriceEventHandlerProtocol,
         interactor: SetPriceInteractorProtocol,
         entityGateway: SetPriceEntityGatewayProtocol,
         router: SetPriceRouterProtocol) {

        self.view = view
        self.presenter = presenter
        self.eventHandler = eventHandler
        self.interactor = interactor
        self.entityGateway = entityGateway
        self.router = router
    }
}
