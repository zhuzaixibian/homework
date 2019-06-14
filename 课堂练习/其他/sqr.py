import turtle

for i in range(7):
    turtle.penup()
    turtle.speed(1)
    turtle.pensize(4)
    turtle.pencolor('black')
    turtle.goto(0,-30*(i+1))
    turtle.pendown()
    turtle.circle(30*(i+1))
