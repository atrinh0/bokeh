import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            HStack {
                ZStack {
                    AngularGradient(gradient: Gradient(colors: [.white, .blue, .blue, .blue, .indigo, .purple, .red, .orange, .orange, .yellow, .yellow, .white,
                                                                .white, .blue, .blue, .blue, .indigo, .purple, .red, .orange, .orange, .yellow, .yellow, .white].reversed()),
                                    center: .bottom)
                    LinearGradient(colors: [.white, .clear], startPoint: .init(x: 0, y: 1), endPoint: .init(x: 0, y: 0.25))
                        .blendMode(.lighten)
                    LinearGradient(colors: [.white.opacity(0.1), .clear], startPoint: .init(x: 0, y: 1), endPoint: .init(x: 0, y: 0.5))
                        .blendMode(.plusLighter)
                    ParticlesEmitter {
                        EmitterCell()
                            .content(.circle(20))
                            .color(.white)
                            .lifetime(200)
                            .birthRate(100)
                            .scale(0.1)
                            .scaleRange(0.03)
                            .scaleSpeed(0.025)
                            .velocity(-0.1)
                            .velocityRange(60)
                            .emissionLongitude(.pi / 2)
                            .emissionRange(.pi / 8)
                            .alphaRange(0.5)
                            .alphaSpeed(-0.1)
                    }
                    .emitterSize(.init(width: 408, height: 50))
                    .emitterShape(.rectangle)
                    .emitterPosition(.init(x: 408/2, y: 300))
                    .opacity(0.2)
                    .blur(radius: 3)

                    ParticlesEmitter {
                        EmitterCell()
                            .content(.circle(20))
                            .color(.white)
                            .lifetime(200)
                            .birthRate(75)
                            .scale(0.1)
                            .scaleRange(0.03)
                            .scaleSpeed(0.025)
                            .velocity(-0.1)
                            .velocityRange(60)
                            .emissionLongitude(.pi / 2)
                            .emissionRange(.pi / 8)
                            .alphaRange(0.5)
                            .alphaSpeed(-0.1)
                    }
                    .emitterSize(.init(width: 408, height: 50))
                    .emitterShape(.rectangle)
                    .emitterPosition(.init(x: 408/2, y: 300))
                    .opacity(0.3)
                    .blur(radius: 2)

                    ParticlesEmitter {
                        EmitterCell()
                            .content(.circle(20))
                            .color(.white)
                            .lifetime(100)
                            .birthRate(80)
                            .scale(0.1)
                            .scaleRange(0.03)
                            .scaleSpeed(0.025)
                            .velocity(-0.075)
                            .velocityRange(40)
                            .emissionLongitude(.pi / 2)
                            .emissionRange(.pi / 4)
                            .alphaRange(0.5)
                            .alphaSpeed(-0.1)
                    }
                    .emitterSize(.init(width: 408, height: 50))
                    .emitterShape(.rectangle)
                    .emitterPosition(.init(x: 408/2, y: 300))
                    .opacity(0.75)
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
