import SwiftUI

struct SignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
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
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(27.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(302.0), height: getRelativeHeight(27.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(28.0))
                    .padding(.trailing, getRelativeWidth(44.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgWhenCommunityComes)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(218.0),
                                       height: getRelativeHeight(134.0), alignment: .topLeading)
                            Text(StringConstants.kMsgOurCommunityIs2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(245.0),
                                       height: getRelativeHeight(39.0), alignment: .topLeading)
                                .padding(.trailing, getRelativeWidth(69.0))
                        }
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(174.0),
                               alignment: .center)
                        Image("img_logo_gray_50_01_120x114")
                            .resizable()
                            .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(120.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(12.0))
                        HStack {
                            TextField(StringConstants.kLblFirstName,
                                      text: $signUpViewModel.firstnameText)
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
                        .padding(.top, getRelativeHeight(96.0))
                        HStack {
                            TextField(StringConstants.kLblLastName,
                                      text: $signUpViewModel.lastnameText)
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
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            TextField(StringConstants.kLblEMail, text: $signUpViewModel.emailText)
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
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            SecureField(StringConstants.kLblPassword,
                                        text: $signUpViewModel.passwordText)
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
                        .padding(.top, getRelativeHeight(24.0))
                        Text(StringConstants.kMsgLoremIpsumDolor)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(39.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.trailing, getRelativeWidth(65.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblNext)
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
                                    .padding(.top, getRelativeHeight(30.0))
                            }
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0))
                        .padding(.top, getRelativeHeight(30.0))
                        HStack {
                            Text(StringConstants.kMsgAlreadyHaveAn)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(162.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblLogin)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(8.0))
                        }
                        .onTapGesture {
                            signUpViewModel.nextScreen = "Login1View"
                        }
                        .frame(width: getRelativeWidth(203.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(29.0))
                    }
                    .frame(width: getRelativeWidth(315.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(28.0))
                    .padding(.trailing, getRelativeWidth(32.0))
                }
                Group {
                    NavigationLink(destination: Login1View(),
                                   tag: "Login1View",
                                   selection: $signUpViewModel.nextScreen,
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
