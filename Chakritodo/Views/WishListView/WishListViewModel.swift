import Foundation
import SwiftUI

class WishListViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var taskfieldText: String = ""
    @Published var filesizeText: String = ""
}
