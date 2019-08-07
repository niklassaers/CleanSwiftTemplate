import Foundation

protocol QueryEditorEventHandlerProtocol: class {
    func doSomething()
    func deleteFavorite(at offsets: IndexSet)
}

