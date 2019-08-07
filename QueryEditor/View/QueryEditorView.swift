import SwiftUI

struct QueryEditorView : View {
    
    @ObservedObject var viewModel: QueryEditorViewModel
    @State var isExecuting: Bool = false
    
    var eventHandler: QueryEditorEventHandlerProtocol
    
    init(viewModel: QueryEditorViewModel) {
        print("did init QueryEditorView")
        self.viewModel = viewModel
        self.eventHandler = QueryEditorPresenter(viewModel: viewModel)
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Favorites") ) {
                    ForEach(viewModel.favouriteNodes) { node in
                        NodeRow(viewModel: node)
                    }
                    .onDelete(perform: deleteFavorite)
                }
                Section(header: Text("Test") ) {
                    Toggle(isOn: self.$isExecuting) {
                        Text("Hello world")
                    }
                    Button(action: {
                        self.eventHandler.doSomething()
                    }) {
                        Text("The button")
                    }
                }
            }
            .navigationBarTitle(Text("Overview"))
                .navigationBarItems(trailing: HStack {
                    AddButton()
                    AddButton()
                    }
            )
                .listRowInsets(EdgeInsets())
        }
    }
    
    func deleteFavorite(at offsets: IndexSet) {
        eventHandler.deleteFavorite(at: offsets)
    }
}

extension QueryEditorView: QueryEditorViewProtocol {
}

#if DEBUG
struct QueryEditorView_Previews : PreviewProvider {
    static var viewModel = QueryEditorViewModel()
    static var previews: some View {
        QueryEditorView(viewModel: viewModel)
    }
}
#endif

