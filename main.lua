--riso blue
risoBlueR = 0
risoBlueG = 120
risoBlueB = 191

--riso pink
risoPinkR = 255
risoPinkG = 72
risoPinkB = 176

--riso yellow
risoYellowR = 255
risoYellowG = 232
risoYellowB = 0

--alpha value range
alpha1 = 30
alpha2 = 60
alpha3 = 90
alpha4 = 120
alpha5 = 150
alpha6 = 180

--color option array
colorChoices = {"blue","pink", "yellow"}

--alpha option array
alphaChoices = {alpha1, alpha2, alpha3, alpha4, alpha5, alpha6}

require("L5")

function setup()
  size(500, 500)
  windowTitle("Project 2")
  --save(project2.png)
end

function draw()
  
end

function mousePressed()
  background(255)
  noStroke()
    for rect1 = 0, 500, 100 do --for loop beginning the vertical rectangles
      currentColor = random(colorChoices)
      currentAlpha = random(alphaChoices)
      if currentColor == "blue" then
        fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      else
        fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end
    rect(rect1-100, 0, rect1, height)
  end --end the vertical rectangles

  rect2 = 0, 0, 500, 100
  for rect2 = 0, 500, 100 do --for loop beginning the horizontal rectangles
    currentColor = random(colorChoices)
      currentAlpha = random(alphaChoices)
      if currentColor == "blue" then
        fill(risoBlueR,risoBlueG,risoBlueB,currentAlpha)
      elseif currentColor == "pink" then
        fill(risoPinkR,risoPinkG,risoPinkB,currentAlpha)
      else
        fill(risoYellowR,risoYellowG, risoYellowB, currentAlpha)
      end
    rect(rect2-100, 0, width, rect2)
  end --end the vertical rectangles

  stroke(255, 255, 255, random(alphaChoices)) --begin vertical lines
  strokeWeight(10)
  for lineX = 75, 500, 75 do
    line(lineX, 0, lineX, height)
  end --end the vertical lines

end