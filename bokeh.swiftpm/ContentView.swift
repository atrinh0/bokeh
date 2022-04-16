import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            HStack {
                ZStack {
                    AngularGradient(gradient: Gradient(colors: [.white, .blue, .indigo, .purple, .red, .orange, .yellow, .white,
                                                                .white, .blue, .indigo, .purple, .red, .orange, .yellow, .white].reversed()),
                                    center: .bottom)
                    LinearGradient(colors: [.white, .clear], startPoint: .init(x: 0, y: 1), endPoint: .init(x: 0, y: 0))
                        .blendMode(.lighten)
                    ParticlesEmitter {
                        EmitterCell()
                            .content(.circle(40))
                            .color(.white)
                            .lifetime(50)
                            .birthRate(10)
                            .scale(0.1)
                            .scaleRange(0.03)
                            .scaleSpeed(0.025)
                            .velocity(-6)
                            .velocityRange(20)
                            .emissionLongitude(.pi / 2)
                            .emissionRange(.pi / 16)
                            .alphaRange(1.0)
                            .alphaSpeed(-0.5)
                    }
                    .emitterSize(.init(width: 408, height: 200))
                    .emitterShape(.rectangle)
                    .emitterPosition(.init(x: 408/2, y: 300))
                    .blur(radius: 1)
                }
                .mask {
                    RoundedRectangle(cornerRadius: 30)
                }
                .frame(width: 408, height: 300)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
