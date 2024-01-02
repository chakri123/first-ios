import SwiftUI

struct LoginorSignUpView: View {
    @StateObject var loginorSignUpViewModel = LoginorSignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrow_left")
                    })
                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                            bottomRight: 7.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.leading, getRelativeWidth(49.0))
                    .padding(.trailing, getRelativeWidth(302.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgWelcomeToOurCommunity)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(208.0), height: getRelativeHeight(134.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgOurCommunityIs)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(281.0), height: getRelativeHeight(39.0),
                                   alignment: .topLeading)
                            .padding(.trailing, getRelativeWidth(29.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(176.0),
                           alignment: .center)
                    Image("img_logo_gray_50_01")
                        .resizable()
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(105.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(31.0))
                    Text(StringConstants.kLblGetInThrough)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(27.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(33.0))
                    Button(action: {
                        loginorSignUpViewModel.nextScreen = "SignUpView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0))
                                .padding(.top, getRelativeHeight(33.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0))
                    .padding(.top, getRelativeHeight(33.0))
                    Button(action: {
                        loginorSignUpViewModel.nextScreen = "Login1View"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogin)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0))
                                .padding(.vertical, getRelativeHeight(14.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0))
                    .padding(.vertical, getRelativeHeight(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(733.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: Login1View(),
                                   tag: "Login1View",
                                   selection: $loginorSignUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $loginorSignUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginorSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        LoginorSignUpView()
    }
}
