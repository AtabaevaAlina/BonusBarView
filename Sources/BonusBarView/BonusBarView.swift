import SwiftUI
import APIiProBonus

public struct BonusBarView: View {
    @Binding var info:GeneralInfo
    
    public init(info: Binding<GeneralInfo>){
        self._info = info
    }
    
    public var body: some View {
        ZStack{
            if info.ShowingView{
                NavigationView{
                            ZStack{
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8235294118, green: 0.2, blue: 0.2431372549, alpha: 1)), Color(#colorLiteral(red: 0.9607843137, green: 0.2941176471, blue: 0.3333333333, alpha: 1))]), startPoint: .top, endPoint: .trailing))
                                    .frame(height: 150, alignment: .top)
                                HStack{
                                    VStack(alignment: .leading, spacing: 12){
                                        Text("\(info.data!.currentQuantity) бонусов")
                                            .font(Font.custom("OpenSans-Bold", size: 24))
                                            .foregroundColor(.black)
                                        HStack{
                                            Text("\(info.data!.dateBurning.toDate(withFormat: "dd.MM")) сгорит")
                                                .font(Font.custom("OpenSans-Regular", size: 16))
                                                .foregroundColor(Color(#colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)))
                                            Image("fire")
                                                .aspectRatio(contentMode: .fit)
                                            Text("\(info.data!.forBurningQuantity) бонусов")
                                                .font(Font.custom("OpenSans-Regular", size: 16))
                                                .foregroundColor(Color(#colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)))
                                        }
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right.circle").font(.system(size: 35, weight: .thin))
                                        .foregroundColor(Color(#colorLiteral(red: 0.831372549, green: 0.2039215686, blue: 0.2470588235, alpha: 1)))
                                }
                                .padding(.all, 20)
                                .background(Color.white)
                                .cornerRadius(20)
                                .padding(.all, 20)
                                .shadow(color: Color.black.opacity(0.2), radius: 20)
                                .offset(y: -80)
                            }
                            .alert(isPresented: $info.ShowingAlert) {
                                Alert(
                                    title: Text(info.resultOperation.message!),
                                    dismissButton: .default(Text("OK"))
                                )
                            }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
                    .padding(.top, 20)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("ЛОГОТИП")
                                .font(Font.custom("OpenSans-Regular", size: 16))
                                .foregroundColor(.black)
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                                Image("information-button")
                            }
                        }
                    }
                }
            }
            else{
                ProgressView()
            }
        }
    }
}
