import UIKit


//dictionary of players and their numbers
var players: Dictionary<Int, String> = [91: "Caggiula", 22: "Carpenter", 12: "DeBrincat",
                                        64: "Kempf", 88: "Kane", 8: "Kubalik", 92: "Nylander",11: "Perini", 47: "Quennneville", 20: "Saad", 65: "Shaw",15: "Smith", 17: "Strone", 19: "Toews", 44: "Haan", 56: "Gustafasson", 2: "Keith", 68: "Koekkoek", 6: "Maatta", 5: "Murphy", 7: "Seabrook", 50: "Crawford", 40: "Lehner"]

//tuple array for num and country
var numCon:[(number: Int, country: String)] = []

//array of all the countries in parallel to the players in players dictionary
var con: [String] = ["CAN", "USA", "USA", "CZE", "USA", "CZE", "CAN", "GBR", "CAN", "USA", "CAN","CAN", "CAN", "CAN", "CAN", "SWE", "CAN", "CAN", "FIN", "USA", "CAN", "CAN", "SWE"]
var ageArr: [ Int] = [(2019-1994),(2019-1991),(2019-1997),(2019-1995),(2019-1988),(2019-1995),(2019-1998),(2019-1996),(2019-1996),(2019-1992),(2019-1991),(2019-1988),(2019-1997),(2019-1988),(2019-1991),(2019-1992),(2019-1983),(2019-1994),(2019-1994), (2019-1993), (2019-1985),(2019-1984),(2019-1991)]
var height: [Int] = [70,72,67,74,70,74,73,75,73,73,71,74,75,74,73,72,73,74,74,76,75,74,76]
var month: [Int] = [6,1,12,1,11,8,3,4,4,10,7,4,3,4,5,3,7,2,8,3,4,12,7]

//tuple array for num and age
var numAge:[(number: Int, age:Int)] = []
var num = 1;

//prints x, key, y, value, and loops through con and prints eac index of con
for (x, y) in players {
    print("\(y):        #\(x)        country: \(con[num]) ")
    //keeps loop from going out of bounds
    if(num<22){
        //num to keep index through country array
        num+=1;}
    //adds tuples to numCon of the players number paired with their country
    numCon+=[(number: x, country:con[num])]
    numAge+=[(number:x, age:ageArr[num])]
    
}

print("\nplayers sorted by country\n")

//sorts numCon alphabetically by country
numCon = numCon.sorted(by: {$0.country < $1.country})
for (x,y) in numCon
{
    //uses x to pull keys from players to get players names, prints country
    print(players[x] ?? <#default value#>,y)
}

numAge = numAge.sorted(by: {$0.age < $1.age})
print("\nplayers sorted by age\n")
for(x,y) in numAge
{
    print(players[x] ?? <#default value#>,y)

}

//reset num
num = 0;
//adds all ages together
for x in ageArr{
    num+=x;
}
//divided by num of players
num/=23
print("\nAverage age is \(num)")

num = 0;
for x in height{
    num+=x
}
num/=23;
print("\nAverage height is \(num) inches")

//dictionary to hold amount of times each birth month is in the array
var counts = [Int: Int]()
//counts each month
month.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
    print("Month \(value) occurs \(count) most times for birth months")

}

