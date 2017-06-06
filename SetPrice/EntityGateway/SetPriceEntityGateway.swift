import Foundation

final public class SetPriceEntityGateway: BaseClient {

    weak var interactor: SetPriceInteractorProtocol?

    public init(system: System, interactor: SetPriceInteractorProtocol) {
        self.interactor = interactor
        super.init(system: system)
    }
}

extension SetPriceEntityGateway : SetPriceEntityGatewayProtocol {


}
