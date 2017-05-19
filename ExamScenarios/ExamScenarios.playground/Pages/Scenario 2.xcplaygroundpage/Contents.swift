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
let red = Color(hue: 350, saturation: 100, brightness: 80, alpha: 75)
let blue = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
let yellow = Color(hue: 49, saturation: 96, brightness: 87, alpha: 100)
canvas.drawShapesWithBorders = false


//Background Color
canvas.fillColor = offWhite
canvas.drawRectangle(centreX: 300, centreY: 400, width: 1000, height: 1000)

//Function for drawing circles
func drawCircles () {
    leftYellowCircles()
    leftRedCircles()
    leftBlueCircles()
    rightYellowCircles()
    rightRedCircles()
    rightBlueCircles()
}


// Function for left blue circles
func leftBlueCircles () {
    for p in 0...10 {
        let y = 222 + 36 * p
        let increasingRow = 0 + 1 * p
    
        for circleAmount in 0...0 + increasingRow {
        let x = 55 + 36 * circleAmount - 37
        let widthHeight = 36 - 3 * circleAmount
    
        canvas.fillColor = blue
    
        canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
        }
    }
}

// Function for left red circles
func leftRedCircles () {
    for p in 0...10 {
        let y = 214 + 36 * p
        let increasingRow = 0 + 1 * p
        
        for circleAmount in 0...0 + increasingRow {
            let x = 51 + 36 * circleAmount - 37
            let widthHeight = 36 - 3 * circleAmount
            
            canvas.fillColor = red
            
            canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
        }
    }
}

// Function for left yellow circles
func leftYellowCircles () {
    for p in 0...10 {
        let y = 214 + 36 * p
        let increasingRow = 0 + 1 * p
        
        for circleAmount in 0...0 + increasingRow {
            let x = 59 + 36 * circleAmount - 37
            let widthHeight = 36 - 3 * circleAmount
            
            canvas.fillColor = yellow
            
            canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
        }
    }
}

// Function for right blue circles
func rightBlueCircles () {
    for p in 1...10 {
        let x = 415 - 36 * p
        let decreasingRow = 10 - 1 * p
        
        for circleAmount in 0...0 + decreasingRow {
            let y = 222 + 36 * circleAmount
            let widthHeight = 36 - 3 * circleAmount
            
            canvas.fillColor = blue
            
            canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
        }
    }
}

// Function for right red circles
func rightRedCircles () {
    for p in 1...10 {
        let x = 411 - 36 * p
        let decreasingRow = 10 - 1 * p
        
        for circleAmount in 0...0 + decreasingRow {
            let y = 214 + 36 * circleAmount
            let widthHeight = 36 - 3 * circleAmount
            
            canvas.fillColor = red
            
            canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
        }
    }
}

// Function for right yellow circles
func rightYellowCircles () {
    for p in 1...10 {
        let x = 419 - 36 * p
        let decreasingRow = 10 - 1 * p
        
        for circleAmount in 0...0 + decreasingRow {
            let y = 214 + 36 * circleAmount
            let widthHeight = 36 - 3 * circleAmount
            
            canvas.fillColor = yellow
            
            canvas.drawEllipse(centreX: x, centreY: y, width: widthHeight, height: widthHeight)
        }
    }
}

//Police Writing
func writeThePolice () {
    canvas.textColor = Color.init(hue: 100, saturation: 100, brightness: 0, alpha: 80)
    canvas.drawText(message: "the police", size: 60, x: 10, y: 120)
}

func bottemWriting() {
    canvas.textColor = Color.init(hue: 100, saturation: 100, brightness: 0, alpha: 80)
    
    canvas.drawText(message: "friday & saturday", size: 8, x: 10, y: 20)
    
    canvas.drawText(message: "at cbgb and omfug", size: 8, x: 115, y: 20)
    
    canvas.drawText(message: "two nights", size: 8, x: 285, y: 20)
    
    canvas.drawText(message: "october 20 & 21 1978", size: 8, x: 10, y: 10)
    
    canvas.drawText(message: "315 bowery at bleecker / new york city", size: 8, x: 115, y: 10)
    
    canvas.drawText(message: "first u.s appearance!", size: 8, x: 285, y: 10)
}



//Everything
drawCircles()
writeThePolice()
bottemWriting()
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
