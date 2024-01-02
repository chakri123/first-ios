import SwiftUI

struct PersonalityView: View {
    @StateObject var personalityViewModel = PersonalityViewModel()
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
                        Text(StringConstants.kLblPersonality)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(27.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(27.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(32.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_profile_image")
                                .resizable()
                                .frame(width: getRelativeWidth(139.0),
                                       height: getRelativeWidth(139.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .background(RoundedCorners(topLeft: 69.0, topRight: 69.0,
                                                           bottomLeft: 69.0, bottomRight: 69.0))
                            Text(StringConstants.kLblEditPhoto)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(35.0))
                                .opacity(0.8)
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(175.0),
                               alignment: .center)
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblUsername)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(65.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLblAdalahalcana,
                                          text: $personalityViewModel.usernameText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(91.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(50.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblFirstName2)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLblAlcanasatre,
                                          text: $personalityViewModel.firstnameText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(91.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblLastName2)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLblFourta,
                                          text: $personalityViewModel.lastnameText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(91.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblHobby)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLblSleep,
                                          text: $personalityViewModel.hobbyText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(89.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblDateOfBirth)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLbl28May2002,
                                          text: $personalityViewModel.dateofbirthText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(91.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblCountry)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLblIndonesian,
                                          text: $personalityViewModel.countryText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(89.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                        Button(action: {
                            personalityViewModel.nextScreen = "SignUpView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblChangeSave)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0))
                                    .padding(.top, getRelativeHeight(34.0))
                            }
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0))
                        .padding(.top, getRelativeHeight(34.0))
                    }
                    .frame(width: getRelativeWidth(311.0), alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(32.0))
                }
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $personalityViewModel.nextScreen,
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

struct PersonalityView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalityView()
    }
}
