import SwiftUI

struct TermsAndConditionsView: View {
    @StateObject var termsAndConditionsViewModel = TermsAndConditionsViewModel()
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
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgTermsAndConditions)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(75.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(13.0))
                Text(StringConstants.kMsgLoremIpsumDolor2)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(285.0), height: getRelativeHeight(475.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(63.0))
                    .padding(.trailing, getRelativeWidth(25.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(729.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .hideNavigationBar()
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView()
    }
}
