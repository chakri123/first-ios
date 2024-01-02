import SwiftUI

struct WishListView: View {
    @StateObject var wishListViewModel = WishListViewModel()
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
                    .padding(.leading, getRelativeWidth(32.0))
                    .padding(.trailing, getRelativeWidth(319.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgMakeAWishList)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgMakeYourJobEasier)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(71.0),
                           alignment: .center)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblTaskTodo)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        HStack {
                            Spacer()
                            Image("img_calendar_onprimarycontainer")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(18.0))
                            TextField(StringConstants.kMsgCreateActionMobile,
                                      text: $wishListViewModel.taskfieldText)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(89.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(85.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblDate)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        HStack {
                            Image("img_calendar")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblTtMmYy)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(18.0))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(89.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblAttachments)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        HStack {
                            Spacer()
                            Image("img_info")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(18.0))
                            TextField(StringConstants.kLblMaximum10Mb,
                                      text: $wishListViewModel.filesizeText)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(89.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    Button(action: {
                        wishListViewModel.nextScreen = "SignUpView"
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
                                .padding(.vertical, getRelativeHeight(50.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0))
                    .padding(.vertical, getRelativeHeight(50.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(729.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $wishListViewModel.nextScreen,
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

struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}
