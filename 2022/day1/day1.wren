import "io" for File
/*
Parse input
Sum calories per Elf, delimited by blank lines
Find Elf with greatest sum
*/

var lines = File.read("input.txt").split("\n")

var sums = []
var sum = 0

for (line in lines) {
  if (line.trim().count == 0) {
    sums.add(sum)
    sum = 0
  } else {
    sum = sum + Num.fromString(line)
  }
}

sums.sort()
var max = sums[-1]

System.print("has max calories %(max)")

var top_three = sums[-3] + sums[-2] + sums[-1]

System.print("Top 3: %(top_three)")

