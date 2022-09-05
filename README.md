# AppleBugDemos

Projects to that demonstrates bugs we've reported to Apple

## SwiftUIGesturesBlockUIKitTouches

Steps to reproduce:

1. Run the iOS project on an iPad
2. Witness dragging etiher the red or green circle moves the circle.
3. Witness that starting drag on the green circle allows the red circle to be moved with another finger simultaneously.
4. Witness that starting drag on the red circle prevents another finger moving the green circle simultaneously.