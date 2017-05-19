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




// First Row
for i in 0...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 582, width: d, height: d)
}

// Second Row
for i in 1...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 547, width: d, height: d)
}

// Third Row
for i in 2...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 512, width: d, height: d)
}

// Fourth Row
for i in 3...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 477, width: d, height: d)
}

// Fifth Row
for i in 4...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 442, width: d, height: d)
}

// Sixth Row
for i in 5...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 407, width: d, height: d)
}

// Seventh Row
for i in 6...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 372, width: d, height: d)
}

// Eigth Row
for i in 7...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 337, width: d, height: d)
}

// Nineth Row
for i in 8...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 302, width: d, height: d)
}

for i in 9...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 267, width: d, height: d)
}

for i in 10...10 {
    let x = 385 - 37 * i
    let d = 5 + 3 * i
    
    canvas.fillColor = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
    
    canvas.drawEllipse(centreX: x, centreY: 232, width: d, height: d)
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
