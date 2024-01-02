import SwiftUI

struct WorkTodayView: View {
    @StateObject var workTodayViewModel = WorkTodayViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrow_left_black_900")
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
                        Text(StringConstants.kLblWorkTodayS2)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgMakeYourJobEasier)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(67.0),
                           alignment: .center)
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblToday)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text(StringConstants.kLbl02April2021)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(50.0),
                               alignment: .bottom)
                        .padding(.vertical, getRelativeHeight(6.0))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_calendar")
                        })
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(78.0))
                    HStack {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                        Text(StringConstants.kMsgResearchProduct)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(13.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(5.0))
                        Image("img_arrow_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(5.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(59.0))
                    HStack {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                        Text(StringConstants.kMsgCreateActionPlan)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(13.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(5.0))
                        Image("img_arrow_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(5.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    Button(action: {
                        workTodayViewModel.nextScreen = "SignUpView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgMakeAWishList)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0))
                                .padding(.vertical, getRelativeHeight(96.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0))
                    .padding(.vertical, getRelativeHeight(96.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(729.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $workTodayViewModel.nextScreen,
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

struct WorkTodayView_Previews: PreviewProvider {
    static var previews: some View {
        WorkTodayView()
    }
}
