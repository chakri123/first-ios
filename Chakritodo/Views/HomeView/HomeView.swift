import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image("img_profile_image")
                    .resizable()
                    .frame(width: getRelativeWidth(139.0), height: getRelativeWidth(139.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipShape(Circle())
                    .background(RoundedCorners(topLeft: 69.0, topRight: 69.0, bottomLeft: 69.0,
                                               bottomRight: 69.0))
                Text(StringConstants.kLblAdalah)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.leading, getRelativeWidth(30.0))
                Text(StringConstants.kLblAlcanasatre)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(18.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(27.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(12.0))
                Text(StringConstants.kMsgJoined6MonthAgo)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(15.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.leading, getRelativeWidth(18.0))
            }
            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(240.0),
                   alignment: .center)
            .padding(.leading, getRelativeWidth(4.0))
            HStack {
                Image("img_location")
                    .resizable()
                    .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(18.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.vertical, getRelativeHeight(4.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(24.0))
                Text(StringConstants.kLblPersonality)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(24.0),
                           alignment: .topLeading)
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(6.0))
                Image("img_stroke_1")
                    .resizable()
                    .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(6.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                               bottomRight: 2.0))
                    .padding(.vertical, getRelativeHeight(10.0))
                    .padding(.trailing, getRelativeWidth(5.0))
            }
            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                       bottomRight: 14.0))
            .padding(.top, getRelativeHeight(47.0))
            .padding(.leading, getRelativeWidth(4.0))
            HStack {
                Image("img_file")
                    .resizable()
                    .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(20.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(24.0))
                Text(StringConstants.kLblWorkTodayS)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(24.0),
                           alignment: .topLeading)
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(6.0))
                Image("img_stroke_1_deep_purple_a400")
                    .resizable()
                    .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(6.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                               bottomRight: 2.0))
                    .padding(.vertical, getRelativeHeight(10.0))
            }
            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                       bottomRight: 14.0))
            .padding(.top, getRelativeHeight(13.0))
            .padding(.leading, getRelativeWidth(4.0))
            HStack {
                Image("img_settings")
                    .resizable()
                    .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.vertical, getRelativeHeight(4.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(24.0))
                Text(StringConstants.kLblSetting)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(24.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(4.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(6.0))
                Image("img_stroke_1_primary")
                    .resizable()
                    .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(6.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                               bottomRight: 2.0))
                    .padding(.vertical, getRelativeHeight(11.0))
            }
            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                       bottomRight: 14.0))
            .padding(.top, getRelativeHeight(13.0))
            .padding(.leading, getRelativeWidth(4.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .hideNavigationBar()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
