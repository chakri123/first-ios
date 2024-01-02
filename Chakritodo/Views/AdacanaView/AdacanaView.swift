import SwiftUI

struct AdacanaView: View {
    @StateObject var adacanaViewModel = AdacanaViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Image("img_logo")
                    .resizable()
                    .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(325.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .onTapGesture {
                        adacanaViewModel.nextScreen = "LoginorSignUpView"
                    }
                Group {
                    NavigationLink(destination: LoginorSignUpView(),
                                   tag: "LoginorSignUpView",
                                   selection: $adacanaViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            adacanaViewModel.nextScreen = "LoginorSignUpView"
        }
    }
}

struct AdacanaView_Previews: PreviewProvider {
    static var previews: some View {
        AdacanaView()
    }
}
