import math

def calculate_area(*args):
    if len(args) == 2:
        # Rectangle: If two arguments (length and width) are provided
        length, width = args
        return length * width
    elif len(args) == 1 and isinstance(args[0], (int, float)):
        # Circle: If one argument (radius) is provided
        radius = args[0]
        return math.pi * radius ** 2
    elif len(args) == 3 and isinstance(args[0], (int, float)) and isinstance(args[1], (int, float)) and args[2] == "triangle":
        # Triangle: If three arguments (base, height, and "triangle" string) are provided
        base, height = args[0], args[1]
        return 0.5 * base * height
    else:
        raise ValueError("Invalid arguments")

while True:
    # Get user input for shape and dimensions
    shape = input("Enter the shape (rectangle, circle, triangle, or exit to quit): ").strip().lower()

    if shape == "exit":
        break  # Exit the loop if the user wants to quit

    if shape == "rectangle":
        length = float(input("Enter the length: "))
        width = float(input("Enter the width: "))
        area = calculate_area(length, width)
        print(f"The area of the rectangle is: {area}")
    elif shape == "circle":
        radius = float(input("Enter the radius: "))
        area = calculate_area(radius)
        print(f"The area of the circle is: {area}")
    elif shape == "triangle":
        base = float(input("Enter the base: "))
        height = float(input("Enter the height: "))
        area = calculate_area(base, height, "triangle")
        print(f"The area of the triangle is: {area}")
    else:
        print("Invalid shape entered.")
