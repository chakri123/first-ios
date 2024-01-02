import Foundation
import SwiftUI

class PersonalityViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var usernameText: String = ""
    @Published var firstnameText: String = ""
    @Published var lastnameText: String = ""
    @Published var hobbyText: String = ""
    @Published var dateofbirthText: String = ""
    @Published var countryText: String = ""
}
