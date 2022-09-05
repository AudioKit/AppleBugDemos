import SwiftUI

struct ContentView: View {

    @GestureState var point1 = CGPoint.zero
    @State var point2 = CGPoint.zero

    var body: some View {
        HStack {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 20).foregroundColor(.gray)
                Circle().foregroundColor(.red)
                    .frame(width: 100, height: 100)
                    .offset(x: point1.x, y: point1.y)
                Text("SwiftUI").font(.largeTitle).padding(100)
            }.gesture(DragGesture()
                .updating($point1) { (drag, loc, _) in loc = drag.location })

            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 20).foregroundColor(.gray)
                Circle().foregroundColor(.green)
                    .frame(width: 100, height: 100)
                    .offset(x: point2.x, y: point2.y)
                Text("UIKit").font(.largeTitle).padding(100)
                SingleTouchView { touch in
                    if let t = touch { point2 = t }
                }
            }
        }
    }
}
