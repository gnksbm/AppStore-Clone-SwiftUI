import SwiftUI

public struct BaseTabView: View {
    @StateObject private var baseTabViewModel: BaseTabViewModel
    
    public var body: some View {
        VStack {
        }
    }
    
    public init(baseTabViewModel: BaseTabViewModel) {
        self._baseTabViewModel = StateObject(
            wrappedValue: baseTabViewModel
        )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView(baseTabViewModel: BaseTabViewModel())
    }
}
