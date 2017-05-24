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

canvas.drawShapesWithBorders = false



func drawRectangles() {

    for q in 0...3 {
        let x = 50 + 100 * q
        let c = 0 + 25 * q
        
        
    
        for row in 0...3 {
        let y = 50 + 100 * row
        let color = c + 25 * row
        
    
                canvas.fillColor = Color.init(hue: 385, saturation: 90, brightness: color, alpha: 100)
            
                canvas.drawRectangle(centreX: x, centreY: y, width: 100, height: 100)
        }
    }
}





//drawRectangles()

//Rotation
//canvas.rotate(by: 45)
//
//canvas.translate(byX: 235, byY: -235)


////Writing
//canvas.drawText(message: "dead kennedys", size: 40, x: 0, y: 400)
//
//canvas.textColor = Color.white
//
//canvas.drawText(message: "with arizona's ", size: 8, x: 5, y: 370)
//
//canvas.drawText(message: "the feederz plus ", size: 8, x: 5, y: 355)
//
//canvas.drawText(message: "la's black flag", size: 8, x: 5, y: 340)
//
//canvas.drawText(message: "wednesday", size: 8, x: 110, y: 370)
//
//canvas.drawText(message: "october 10 1979", size: 8, x: 110, y: 355)
//
//canvas.drawText(message: "admission $2", size: 8, x: 110, y: 340)
//
//canvas.drawText(message: "mabuhay gardens", size: 8, x: 210, y: 370)
//
//canvas.drawText(message: "443 brodway", size: 8, x: 210, y: 355)
//
//canvas.drawText(message: "san francisco, ca", size: 8, x: 210, y: 340)




//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
