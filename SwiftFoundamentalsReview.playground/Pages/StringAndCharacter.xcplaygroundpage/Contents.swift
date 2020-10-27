import UIKit

var str = "Hello, playground"

// Character alias String.Element

//var dataSourse = UITableViewDataSource<Int, Int>()
// instead
 //typealias DataSourse = UITableViewDiffableDataSource<Int, Int>?
// var dataSourse: DataSourse


for char in str { // char is of type Character and alias Strihg.Element
    print(char)
}

let json = """


""" // multiple line - > multiline string

// Space character = Escape characters in different languges:

// compiler error (gives an error immediatelly) vs runtime error (fatal error - crash), needs for application to run

let quotesIncluded = "\"Alex's program.\"" // here escape character is \
print(quotesIncluded)

let multilines = "This is the first line.\nSecond line." // here escape character \n
print(multilines)

// runtime error
var arr = [Int]()

// String in Swift is aa value type or pass-by-value or structs

var kelby = "Kelby"
var alex = kelby

alex = "Alex"

// String interpolation
print("Results of addition is \(52+60)") // Prints "Results of addition is 112"

//String.Index not Int

let arrInt = [1, 2, 3, 4]

arrInt[2] // 3

let day = "Thursday"
//day[0] -> cannot use it as in Array
print(day[day.startIndex])

//
let lastCharacterIndex = day.index(before: day.endIndex)
print(day[lastCharacterIndex])

let randomIndex = day.index(lastCharacterIndex, offsetBy: -2) // moving from last index to the lest 2 indexes
print(day[randomIndex])

// Special (Escape) Characters in String Literals
//String literals can include the following special characters:

print("\tThis line will print from tab.")


// Unicode: Unicodes: compart.com

// =================== Practice =================== //

/*
 Strings and Characters Exercises

 Question 1

 Write code that prints out all the numbers from 1 to 10 as a single string.
 */

var str1 = ""
for num in 1...10 {
   str1 += "\(num) "
}
print(str1) // 1 2 3 4 5 6 7 8 9 10

/*
 Question 2

 Write code that prints out all the even numbers from 5 to 51 as a single string.
 */

var resultString = ""

for num in 5...51 {
    if num % 2 == 0 {
        resultString.append("\(num) ") // String(num)
    }
}

// OR:
//for num in 5...51 where num % 2 == 0 {
//  resultString += "\(num) "
//}

print(resultString) // 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50


/*
 Question 3

 Write code that prints out every number ending in 4 between 1 and 60 as a single string.
 */
var numbersEndingInFour = ""
for num in 1...60 where String(num).hasSuffix("4") {
   numbersEndingInFour += "\(num) "
}
// OR:
//for num in 1...60 where num % 10 == 4 {
//  numbersEndingInFour += "\(num) "
//}

print(numbersEndingInFour) // 4 14 24 34 44 54

/*
 Question 4

 Print each character in the string "Hello world!"
*/

for char in "Hello world!" {
    print(char)
}

/*
 Question 5

 Print out the last character in the string below. You cannot use the Character literal "!" (i.e you must access myStringSeven's characters).

 let myStringSeven = "Hello world!"

 Solution
 Question 6

 You are given a string stored in the variable aString. Create new string named replacedString that contains the characters of the original string with all the occurrences of the character "e" replaced by "*".

 var aString = "Replace the letter e with *"
 // Your code here
 Example:

 Input: let aString = "Replace the letter e with *"

 Expected values: replacedString = "R*plac* th* l*tt*r * with *"

 Solution
 Question 7

 You are given a string stored in variable aString. Create a new string called reverse that contains the original string in reverse order. Print the reversed string. You cannot used built-in reverse.

 let aString = "this string has 29 characters"
 var reverse = ""

 // Your code here
 Example: Input: let aString = "Hello"

 Output: "olleH"

 Solution
 Question 8

 You are given a string stored in variable aString. Print true if aString is a palindrome, and false otherwise. A palindrome is a string which reads the same backward or forward.

 let str1 = "anutforajaroftuna"

 // Your code here
 Example 1: Input: let str1 = "anutforajaroftuna"

 Output: true

 Example 2: Input: let str2 = "Hello"

 Output: false

 Solution
 Question 9

 You are given a string stored in variable problem. Write code so that you print each word of the string on a new line.

 let problem = "split this string into words and print them on separate lines"

 // Your code
 Example: Input: let problem ="split this string into words and print them on separate lines"

 Output:

 split
 this
 string
 into
 words
 and
 print
 them
 on
 separate
 lines
 Solution
 Question 10

 You are given a string stored in variable problem. Write code that prints the longest word in the string.

 let problem = "find the longest word in the problem description"

 // Your code here
 Example: Input: let problem = "find the longest word in the problem description"

 Output: description

 Hint: Keep track of the longest word you encounter and also keep track of its length.

 Solution
 Question 11

 Given a string in English, create a tuple containing the number of vowels and consonants.

 let vowels = "aeiou"
 let consonants = "bcdfghjklmnpqrstvwxyz"
 let input = "Count how many vowels I have!"
 Solution
 Question 12

 Given a string of words separated by a " ". Write code that prints out the length of the last word.

 If there is no last word print out "No last word".

 Example: Input: "How are you doing this Monday?"

 Output: 7

 Solution
 Question 13

 Given a string testString create a new variable called condensedString that has any consecutive spaces in testString replaced with a single space.

 let testString = "  How   about      thesespaces  ?  "
 var condensedString = ""

 // Output: " How about thesespaces ? "
 Solution
 Question 14

 Given a string with multiple words. Reverse the string word by word. You cannot use built-in reverese or swapAt.

 Example:

 Sample Input: "Swift is the best language"

 Sample Output: "language best the is Swift"

 Solution
 Question 15

 Given a string with multiple words. Write code that prints how many of them are palindromes.

 Note: Feel free to use functions if you are already familiar with them.

 Example:

 Sample Input: "danaerys dad cat civic bottle"

 Sample Output: 2

 Solution
 Question 16

 You are given a string representing an attendance record for a student. The record only contains the following three characters:

 'A' : Absent.

 'L' : Late.

 'P' : Present.

 If a student has more than one 'A' or more than 2 continuous 'L's that student should not be rewarded. Print true if student is to be rewarded and False if they shouldn't.

 Example:

 Sample Input: "PPALLP"

 Sample Output: true

 Solution
 Question 17

 Given a tuple with two strings. The first string is a ransom note, the second string being the characters from a magazine. Determine whether or not you can construct the ransom note using the characters from the magazine.

 Each letter from the magazine can only be used once. You can assume all letters are lowercased.

 Examples:

 Sample Input1: ("a", "b")

 Sample Output1: False

 Sample Input2: ("aa", "aab")

 Sample Output2: True

 Solution*/
