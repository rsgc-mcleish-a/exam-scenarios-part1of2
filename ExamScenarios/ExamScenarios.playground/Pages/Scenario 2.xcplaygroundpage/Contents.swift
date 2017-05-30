//: [Previous](@previous)
//: # Scenario 2
//: ## Your goal
//: Reproduce this image:
//:
//: ![The Police](ThePolice.png "The Police")
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

// Color constants
let offWhite = Color(hue: 86, saturation: 6, brightness: 88, alpha: 100)
let red = Color(hue: 350, saturation: 100, brightness: 80, alpha: 65)
let blue = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
let yellow = Color(hue: 49, saturation: 96, brightness: 87, alpha: 100)
canvas.drawShapesWithBorders = false


//Background Color
canvas.fillColor = offWhite
canvas.drawRectangle(centreX: 300, centreY: 400, width: 1000, height: 1000)



    for p in 0...10 {
        let y = 220 + 36 * p
        let x2 = 18 + 36 * p
        let daRow = 0 + 1 * p
        
        for circleAmount in 0...0 + daRow {
            let x = 19 + 36 * circleAmount - 37
            let y2 = 220 + 36 * circleAmount
            let widthHeight = 39 - 3 * circleAmount
            
            
            canvas.fillColor = yellow
            canvas.drawEllipse(centreX: x + 4, centreY: y - 8, width: widthHeight, height: widthHeight)
            canvas.drawEllipse(centreX: x2 + 4, centreY: y2 - 8, width: widthHeight - 3, height: widthHeight - 3)
            
            canvas.fillColor = red
            canvas.drawEllipse(centreX: x - 4, centreY: y - 8, width: widthHeight, height: widthHeight)
            canvas.drawEllipse(centreX: x2 - 4, centreY: y2 - 8, width: widthHeight - 3, height: widthHeight - 3)
            
            canvas.fillColor = blue
            canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
            canvas.drawEllipse(centreX: x2, centreY: y2, width: widthHeight - 3, height: widthHeight - 3)
            
        
            
            
    }
}






















    canvas.textColor = Color.init(hue: 100, saturation: 100, brightness: 0, alpha: 80)
    canvas.drawText(message: "the police", size: 60, x: 10, y: 120)

    canvas.textColor = Color.init(hue: 100, saturation: 100, brightness: 0, alpha: 80)
    
    canvas.drawText(message: "friday & saturday", size: 8, x: 10, y: 20)
    
    canvas.drawText(message: "at cbgb and omfug", size: 8, x: 115, y: 20)
    
    canvas.drawText(message: "two nights", size: 8, x: 285, y: 20)
    
    canvas.drawText(message: "october 20 & 21 1978", size: 8, x: 10, y: 10)
    
    canvas.drawText(message: "315 bowery at bleecker / new york city", size: 8, x: 115, y: 10)
    
    canvas.drawText(message: "first u.s appearance!", size: 8, x: 285, y: 10)





//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
