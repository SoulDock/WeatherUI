import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("London, GB")
                    .font(.system(size: 32,weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 0){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160,height: 160)
                    Text("18°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
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
                .font(.system(size: 16,weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30)
            Text("\(temperature)°")
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
