//: [Previous](@previous) / [Next](@next)
//: # Scenario 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Dead Kennedys](DeadKennedys.png "Dead Kennedys")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

canvas.fillColor = Color.init(hue: 385, saturation: 100, brightness: 100, alpha: 90)

canvas.drawRectangle(centreX: 150, centreY: 300, width: 1000, height: 1000)


//Functions
func drawBlackSquare(centreX: Int, centreY: Int) {
    
    canvas.drawShapesWithBorders = false
    
    canvas.fillColor = Color.black
    
    canvas.drawRectangle(centreX: centreX, centreY: centreY, width: 100, height: 100)
}
func drawBrownSquare(centreX: Int, centreY: Int) {
    
    canvas.drawShapesWithBorders = false
    
    canvas.fillColor = Color.init(hue: 385, saturation: 100, brightness: 20, alpha: 90)
    
    canvas.drawRectangle(centreX: centreX, centreY: centreY, width: 100, height: 100)
}
func drawLightBrownSquare(centreX: Int, centreY: Int) {
    
    canvas.drawShapesWithBorders = false
    
    canvas.fillColor = Color.init(hue: 385, saturation: 100, brightness: 50, alpha: 90)
    
    canvas.drawRectangle(centreX: centreX, centreY: centreY, width: 100, height: 100)
}
func drawBrownOrangeSquare(centreX: Int, centreY: Int) {
    
    canvas.drawShapesWithBorders = false
    
    canvas.fillColor = Color.init(hue: 385, saturation: 100, brightness: 55, alpha: 40)
    
    canvas.drawRectangle(centreX: centreX, centreY: centreY, width: 100, height: 100)
}


//Rotation
canvas.rotate(by: 45)

canvas.translate(byX: 235, byY: -235)


//Bottom Row
drawBlackSquare(centreX: 50, centreY: 50)

drawBrownSquare(centreX: 150, centreY: 50)

drawLightBrownSquare(centreX: 250, centreY: 50)

drawBrownOrangeSquare(centreX: 350, centreY: 50)

//Third Row

drawBrownSquare(centreX: 50, centreY: 150)

drawLightBrownSquare(centreX: 150, centreY: 150)

drawBrownOrangeSquare(centreX: 250, centreY: 150)

drawBlackSquare(centreX: 350, centreY: 150)


//Second Row
drawLightBrownSquare(centreX: 50, centreY: 250)

drawBrownOrangeSquare(centreX: 150, centreY: 250)

drawLightBrownSquare(centreX: 250, centreY: 250)

drawBrownSquare(centreX: 350, centreY: 250)

//First Row
drawBrownOrangeSquare(centreX: 50, centreY: 350)

drawLightBrownSquare(centreX: 150, centreY: 350)

drawBrownSquare(centreX: 250, centreY: 350)

drawBlackSquare(centreX: 350, centreY: 350)


//Writing
canvas.drawText(message: "dead kennedys", size: 40, x: 0, y: 400)

canvas.textColor = Color.white

canvas.drawText(message: "with arizona's ", size: 8, x: 5, y: 370)

canvas.drawText(message: "the feederz plus ", size: 8, x: 5, y: 355)

canvas.drawText(message: "la's black flag", size: 8, x: 5, y: 340)

canvas.drawText(message: "wednesday", size: 8, x: 110, y: 370)

canvas.drawText(message: "october 10 1979", size: 8, x: 110, y: 355)

canvas.drawText(message: "admission $2", size: 8, x: 110, y: 340)

canvas.drawText(message: "mabuhay gardens", size: 8, x: 210, y: 370)

canvas.drawText(message: "443 brodway", size: 8, x: 210, y: 355)

canvas.drawText(message: "san francisco, ca", size: 8, x: 210, y: 340)




//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
