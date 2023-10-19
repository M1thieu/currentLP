extends Node


# Calculate the distance between two points
func calculate_distance(point1: Vector2, point2: Vector2) -> float:
	return point1.distance_to(point2)

# Calculate the direction vector from point1 to point2
func calculate_direction(point1: Vector2, point2: Vector2) -> Vector2:
	return (point2 - point1).normalized()

# Calculate a new position based on a given position, direction, and distance
func calculate_new_position(position: Vector2, direction: Vector2, distance: float) -> Vector2:
	return position + direction * distance

# You can add more functions here for various calculations related to plants
# For example, calculating growth, movement, interactions, etc.
