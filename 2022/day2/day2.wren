import "io" for File

var games = File.read("input.txt").split("\n")

/*

A = X = Rock
B = Y = Paper
C = Z = Scissors

*/

var points = {
  "A": 1,
  "B": 2,
  "C": 3,
  "X": 1,
  "Y": 2,
  "Z": 3,
}

var wins = [
  "A Y",
  "B Z",
  "C X",
]

var draws = [
  "A X",
  "B Y",
  "C Z",
]

var score = 0

for (line in games) {
    if (line.count == 0) continue

    var moves = line.split(" ")
    score = score + points[moves[1]]

    if (wins.indexOf(line) != -1) {
System.print("WIN: %(line)")
        score = score + 6
    } else {
        if (draws.indexOf(line) != -1) {
System.print("DRAW: %(line)")
            score = score + 3
        } else {
System.print("LOSE: %(line)")
            score = score + 0
        }
    }
}

System.print(score)

