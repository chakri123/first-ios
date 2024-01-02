import SwiftUI

struct ForgotPasswordView: View {
    @StateObject var forgotPasswordViewModel = ForgotPasswordViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("img_arrow_left")
                        })
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                bottomRight: 7.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        Text(StringConstants.kLblForgotPassword)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(27.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(27.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(32.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgHelpingOthersMeans)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(262.0), height: getRelativeHeight(144.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgIfYouAreAlways)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(39.0),
                                   alignment: .topLeading)
                            .padding(.trailing, getRelativeWidth(65.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(183.0),
                           alignment: .center)
                    Image("img_logo_gray_50_01_121x135")
                        .resizable()
                        .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(121.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(37.0))
                    Text(StringConstants.kLblForgotPassword)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(27.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(27.0))
                    HStack {
                        TextField(StringConstants.kLblYourEmail,
                                  text: $forgotPasswordViewModel.emailText)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .padding()
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                            bottomRight: 10.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(45.0))
                    Text(StringConstants.kMsgLoremIpsumDolor)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(246.0), height: getRelativeHeight(39.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(19.0))
                        .padding(.trailing, getRelativeWidth(64.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(614.0),
                       alignment: .center)
                Button(action: {
                    forgotPasswordViewModel.nextScreen = "SignUpView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblStart)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(19.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0))
                            .padding(.horizontal, getRelativeWidth(32.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0))
                .padding(.horizontal, getRelativeWidth(32.0))
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $forgotPasswordViewModel.nextScreen,
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

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
