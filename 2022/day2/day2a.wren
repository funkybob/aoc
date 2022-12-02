import "io" for File

var games = File.read("input.txt").split("\n")

/*

A = Rock
B = Paper
C = Scissors

*/

var points = {
  "A": 1,
  "B": 2,
  "C": 3,
}

var toWin = {
  "A": "B",
  "B": "C",
  "C": "A",
}

var toLose = {
  "A": "C",
  "B": "A",
  "C": "B",
}

var score = 0

for (line in games) {
    if (line.count == 0) continue

    var moves = line.split(" ")

    if (moves[1] == "X") {
        /* Lose */
        score = score + points[toLose[moves[0]]]
    } else {
        if (moves[1] == "Z") {
            /* Win */
            score = score + 6 + points[toWin[moves[0]]]
        } else {
            /* DRAW */
            score = score + 3 + points[moves[0]]
        }
    }
}

System.print(score)

