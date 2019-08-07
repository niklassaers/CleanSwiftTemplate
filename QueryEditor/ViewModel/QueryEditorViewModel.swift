import Foundation
import SwiftUI
import Combine

final class QueryEditorViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<QueryEditorViewModel, Never>()
    
    var favouriteNodes: [NodeViewModel] {
        didSet {
            print("did set favouriteNodes")
            didChange.send(self)
            
        }
        
    }
    var nodeLabels: [String] { didSet { didChange.send(self) } }
    var relationshipTypes: [String] { didSet { didChange.send(self) } }
    var nodePropertyKeys: [String] { didSet { didChange.send(self) } }
    var relationshipPropertyKeys: [String] { didSet { didChange.send(self) } }

    init() {
        print("Initialized QueryEditorViewModel")

        favouriteNodes = [ NodeViewModel(labels: ["Dad"]) ]
        nodeLabels = ["A", "B"]
        relationshipTypes = ["A", "B"]
        nodePropertyKeys = ["A", "B"]
        relationshipPropertyKeys = ["A", "B"]
    }
    
    
}
