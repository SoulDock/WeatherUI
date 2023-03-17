import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack{
                SityTextViev(sityName: "London, GB")
                MainWeatherView(imageName: "cloud.sun.fill", temperature: 18)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temperature: 19)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.max.fill",
                                   temperature: 21)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.fill",
                                   temperature: 16)
                    WeatherDayView(dayOfWeek: "TRU",
                                   imageName: "cloud.drizzle.fill",
                                   temperature: 22)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.fog.fill",
                                   temperature: 18)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label:{
                    WeatherButton(buttonText: "Change Day Time", textColor: isNight ? .white : .blue, backgroundColor: isNight ? .black : .white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text("\(dayOfWeek)")
                .font(.system(size: 18,weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50,height: 50)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SityTextViev: View{
    var sityName: String
    var body: some View{
        Text(sityName)
            .font(.system(size: 32,weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View{
    var imageName: String
    var temperature: Int
    var body: some View{
        VStack(spacing: 0){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160,height: 160)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

