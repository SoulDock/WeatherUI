import SwiftUI

struct WeatherButton: View{
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View{
            Text(buttonText)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 280, height: 50)
                .foregroundColor(textColor)
                .background(backgroundColor)
                .cornerRadius(10)
    }
}
