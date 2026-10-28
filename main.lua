require("L5")

function setup()
  size(480, 120)
end

function draw()
  if mouseIsPressed then
    fill('black')
  else
    fill('white')
  end
  ellipse(mouseX, mouseY, 80, 80)
end