import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                .padding(.leading, getRelativeWidth(32.0))
                .padding(.trailing, getRelativeWidth(319.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblSettings)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(42.0),
                               alignment: .topLeading)
                    Text(StringConstants.kMsgYourSettingsSo)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(9.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(69.0),
                       alignment: .center)
                HStack {
                    Text(StringConstants.kLblPersonality)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                    Image("img_arrow_right")
                        .resizable()
                        .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(6.0))
                        .padding(.leading, getRelativeWidth(91.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0))
                .shadow(radius: 4)
                .padding(.top, getRelativeHeight(34.0))
                HStack {
                    Text(StringConstants.kLblLanguage)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                    Image("img_arrow_right")
                        .resizable()
                        .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(7.0))
                        .padding(.leading, getRelativeWidth(93.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0))
                .shadow(radius: 4)
                .padding(.top, getRelativeHeight(14.0))
                HStack {
                    Text(StringConstants.kMsgTermsAndConditions)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                    Image("img_arrow_right")
                        .resizable()
                        .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(6.0))
                        .padding(.leading, getRelativeWidth(57.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0))
                .shadow(radius: 4)
                .padding(.top, getRelativeHeight(14.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(177.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblLogOut)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(18.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                    bottomRight: 14.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.bottom, getRelativeHeight(31.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                        bottomRight: 14.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                           bottomRight: 14.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.bottom, getRelativeHeight(31.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(729.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .hideNavigationBar()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
