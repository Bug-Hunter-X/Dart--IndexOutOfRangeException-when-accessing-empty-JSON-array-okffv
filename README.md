# Dart: Handling Empty JSON Arrays

This repository demonstrates a common error in Dart when working with JSON data: attempting to access an element of an empty array. The code in `bug.dart` shows the problem, while `bugSolution.dart` provides a solution.

## Problem
The `fetchData` function fetches data from an API. If the API returns an empty JSON array, the code throws an `IndexOutOfRangeException` when it attempts to access `jsonData[0]`.  This is because the array has no elements at index 0.

## Solution
The `bugSolution.dart` file addresses this by first checking the length of the JSON array before accessing its elements. If the array is empty, it handles the situation gracefully, preventing the exception.