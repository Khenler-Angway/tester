import Foundation

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

/*
 IT 311 | 9473 - Applications Development
 10:30-11:30 AM | 12:1:30 PM TF
 
 GROUP 6
 ANGWAY, Khenler
 ANGWAY, Timothy Jue
 AZURIN, John Arvin Dale
 CLEMENTE, Lise
 HUFALAR, Jekka Menna
 GANGAN, William Sylvester
 TORIANO, Joefrey
 */

/*
 Aim: Create an informative console app named BAGUINFORM
 Target Users: Baguio citizens and tourists
 Purpose: Provide helpful contact information and tourist destination details
 */

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create a class named Account
class Account {
    var username:String         // declare username variable [String]
    var password:String         // declare password variable [String]
    var firstName: String       // declare password firstname [String]
    var lastName: String        // declare password lastname [String]
    var address: String         // declare password address [String]
   
    // create the init method [also called as constructors in Java]
    init(username:String, password:String, firstName: String,
         lastName:String, address:String) {
        self.username = username
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.address = address

    } // end of init Method
} // end of Account

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create array containing the Account class named accounts
var accounts:[Account] = []

// create String array named spots
var spots: [String] = ["Botanical Garden",
                       "Burnham Park",
                       "Mines View Park",
                       "Igorot Stone Kingdom",
                       "Camp John Hay",
                       "The Mansion",
                       "Wright Park",
                       "Tam-awan Village",
                       "Baguio Museum",
                       "Baguio Cathedral",
                       "Baguio Night Market",
                       "Sky Ranch Baguio",
                       "SM Baguio",
                       "Yellow Trail",
                       "White House"]

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create function called initialDis()
func initialDis() {
    var running = true
    
    // while loop, if running is true the block of code runs
    while running {
        print("                                                     ")
        print("^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^")
        print("^               Welcome to BAGUINFORM               ^")
        print("^               - - - - - - - - - - -               ^")
        print("^   Your Baguio Infomative Console App that will    ^")
        print("^      provide helpful contact information and      ^")
        print("^             tourist destination details.          ^")
        print("^                                                   ^")
        print("^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^")
        print("                                                     ")
        print("^                   [1] Sign In                     ^")
        print("^                   [2] Sign Up                     ^")
        print("^                   [3] Exit                        ^")
        print("        Enter the number of you choice: ", terminator: " ")
        let choice = getChoice()                                                // read user input for choice
        
        // create switch case for user to choice whether to sign in or sign up
        switch choice {
        case 1:
            signIn()
            running = false
        case 2:
            signUp()
            running = false
        case 3:
            print("^                                                   ^")
            print("^            Thank you for using our App!           ^")
            print("^                                                   ^")
            running = false
        default:
            print("^                                                   ^")
            print("^      Opps! Invalid input. Please try again.       ^")
            print("^                                                   ^")
        } // end of switch
    } // end of while
} // end of initialDis()

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create function called signUp()
func signUp() {
    print("                                       ")
    print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    print("*               Sign Up for an Account              *")
    print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    print("*                                                   *")
    print("*          Please enter the following details       *")
    print("*     - - - - - - - - - - - - - - - - - - - - -     *")
    print("*                                                   *")
    print("           First Name:", terminator: " ")
    let fName = readLine() ?? ""            // read user input for First Name
    
    print("           Last Name:", terminator: " ")
    let lName = readLine() ?? ""            // read user input for Last Name
    
    print("           Address:", terminator: " ")
    let addr = readLine() ?? ""            // read user input for Address
    
    print("           Username:", terminator: " ")
    let user = readLine() ?? ""            // read user input for Username
    
    print("           Password:", terminator: " ")
    let pass = readLine() ?? ""            // read user input for Password
    
    // add a new user to the Account()
    let newUser = Account(username: user, password: pass,
                          firstName: fName, lastName: lName,
                          address: addr)
    
    // add user inputs to the Accounts list
    accounts.append(newUser)
    
    // print success message
    print("                                                     ")
    print("*     - - - - - - - - - - - - - - - - - - - - -     *")
    print("*          Congratulations! Account created!        *")
    print("*              Please sign in your account.         *")
    print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    print("*                                                   *")
    
    // return to main menu
    initialDis()
} // end of func Account()

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create function called signIn()
func signIn() {
    print("                                                     ")
    print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    print("*                 Sign In your Account              *")
    print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    print("*                                                   *")
    print("         Enter your Username:", terminator: " ")             // read user input for username
    let user = readLine()
    print("         Enter your Password:", terminator: " ")             // read user input for password
    var pass = readLine()
    
    // validate if username and password are empty
    if user!.isEmpty || pass!.isEmpty {
        print("                                                     ")
        print("*                    !!! Oops  !!!                  *")
        print("*        Username and Password cannot be empty!     *")
        print("*                Please Sign Up first.              *")
        
        // return to the main menu
        initialDis()
    } // end of if
    
    // Check if the user exists in the accounts array
    if let account = accounts.first(where: { $0.username == user }) {
        // User exists, check the password
        while account.password != pass {
            print("                                                     ")
            print("*                    !!! Oops  !!!                  *")
            print("*       Incorrect password! Please try again        *")
            print("             Password:", terminator: " ") // read Password input from user
            pass = readLine()
        } // use while loop to check if password and account matches
        
        print("                                                      ")
        print("*     - - - - - - - - - - - - - - - - - - - - -      *")
        print("*                     Welcome!                       *")
        print("*               You are now logged in!               *")
        print("*     - - - - - - - - - - - - - - - - - - - - -      *")
        print("                                                      ")
        main() // proceed to main after authentication
    } else {
        // User does not exist
        print("                                                      ")
        print("*                    !!! Oops  !!!                   *")
        print("     User with username '\(user ?? "")' does not exist!  ")
        print("*        Do you want to go sign up for an account?   *")
        print("*                 y/n: ", terminator: " ")
        let answer = readLine()
        
        if answer == "y" {
            signUp()        // proceed to signUp method
        } else if answer == "n" {
            print("*                                                   *")
            print("*            Thank you for using our App!           *")
            print("*                                                   *")
            exit(0)
        } else {
            print("*                                                   *")
            print("*                  Opps! Invalid input.             *")
            print("*            Please enter 'y' or 'n' only.          *")
            } // end of else
    } // end of else
} // end of signUp()

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create function called main()
func main() {
    var running = true
    
    while running {
        displayMenu()

    let choice = getChoice()
    switch choice {
        case 1:
            print("                                                     ")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("^            Baguio Contact Information             ^")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("                                                     ")
            viewContactInfo()
        case 2:
            print("                                                     ")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("^                Baguio Tourist Spots               ^")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("                                                     ")
            viewTouristSpots()
        case 3:
            print("                                                     ")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("^              Tourist Spot Totalizer               ^")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("                                                     ")
            totalizer()
        case 4:
            print("                                                     ")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("^           Thank you for using our App!            ^")
            print("^      . . . . . . . . . . . . . . . . . . .        ^")
            print("                                                     ")
            running = false
        default:
            print("^                                                   ^")
            print("^      Opps! Invalid input. Please try again.       ^")
            print("^                                                   ^")
        } // end of switch
    } // end of while
} // end of main()

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create function called displayMenu()
func displayMenu() {
    print("                                                      ")
    print("^              BAGUINFORM MAIN MENU                 ^")
    print("^      - - - - - - - - - - - - - - - - - - -        ^")
    print("^         [1] View Contact Information              ^")
    print("^         [2] Tourist Spots                         ^")
    print("^         [3] Tourist Spot Totalizer                ^")
    print("^         [4] Exit                                  ^")
    print("^      - - - - - - - - - - - - - - - - - - -        ^")
    print("^                                                   ^")
    print("          Enter choice: ", terminator: " ")
} // end of displayMenu

// create func getChoice() for recieving input
func getChoice() -> Int {
    if let choice = Int(readLine() ?? "") {
        return choice
    } else {
        return -1
    } // end of else
} // end of getChoice()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create function called viewContactInfo()
func viewContactInfo() {
    var running = true                   // declare variable running which is set to true
    
    // while loop runs the code block if the var running is true
    while running {
        print("                                                      ")
        print("^           Please choose at which Sector            ^")
        print("^      - - - - - - - - - - - - - - - - - - -         ^")
        print("^                [1] Police Station                  ^")
        print("^                [2] Hospital                        ^")
        print("^                [3] Fire Station                    ^")
        print("^                [4] Back                            ^")
        print("^                                                    ^")
        print("            Enter number of choice: ", terminator: " ")
        let choice = getChoice()
        
        // case switch for sector
        switch choice {
            case 1: dispPolInfo()
            case 2: dispHospInfo()
            case 3: dispFireInfo()
            
            // code block terminates since var running is set to false
            case 4: running = false
            
            default:
                print("^                                                   ^")
                print("^      Opps! Invalid input. Please try again.       ^")
                print("^                                                   ^")
        } // end of switch
    } // end of while
} // end of viewContactInfo()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create function called dispPolInfo()
func dispPolInfo() {
    print("^                                                   ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^         Police Station Contact Information        ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^                                                   ^")
    print("^        Baguio Police Station: 166                 ^")
    print("^        BCPO: 0917-575-8993 (Globe)                ^")
    print("^              09985987739   (Smart / TNT)          ^")
    print("^        Anti-Crime Hotline: 163                    ^")
    print("^        PNP-CAMP Dangwa: 442-5645                  ^")
    print("^        CIS: 442-8781                              ^")
    print("^        NARCOM: 443-4720                           ^")
    print("^        NBI: 442-7203 OR 442-7204                  ^")
} // end of dispPolInfo()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create function called dispHospInfo()
func dispHospInfo() {
    print("^                                                   ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^            Hospital Contact Information           ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^                                                   ^")
    print("^   Baguio General Hospital: 442-4216 or 169        ^")
    print("^   BGHMC E.R: 442-3765                             ^")
    print("^   BGH DTOP DEATH Program: 443-5678                ^")
    print("^   SLU Sacred Heart Hospital: 442-5701 or 442-5702 ^")
    print("^   Baguio Medical Center: 442-3338 or 442-5702     ^")
    print("^   Sto. Nino Hospital: 442-7769                    ^")
    print("^   Fil-Chinese Hospital: 443-7770                  ^")
}// end of dispHospInfo()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create function called dispFireInfo()
func dispFireInfo() {
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^          Fire Station Contact Information         ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^                                                   ^")
    print("^                    442-2222                       ^")
    print("^                    443-7089                       ^")
    print("^            0912-409-6114 (Smart/TNT)              ^")
} // end of dispFireInfo()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create function called  viewTouristSpots()
func viewTouristSpots() {
    var counter = 1
    for s in spots {
        print("            \(counter). \(s)")
        counter += 1
    } // end of for
} // end of viewTouristSpots() {

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create function called totalizer()
func totalizer() {
    var visited = [String]()                        // declare variable visited
    var unvisited = [String]()                      // declare variable unvisited
    
    // for in loop
    for n in spots {
        while true {
            print("^                                                   ^")
            print("^      - - - - - - - - - - - - - - - - - - -        ^")
            print("           Have you ever been to \(n)?              ")
            print("^                 y/n: ", terminator: " ")
            let answer = readLine()
            if answer == "y" {
                visited.append(n)
                break
            } else if answer == "n" {
                unvisited.append(n)
                break
            } else {
                print("^                                                   ^")
                print("^                  Opps! Invalid input.             ^")
                print("^            Please enter 'y' or 'n' only.          ^")
            } // end of else if
        } // end of while
    } // end of for in loop
    
    print("^                                                   ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^               Visited Destinations:               ^")
    
        // use for in loop to display visited destinations stored in the array
        for seenSpots in visited {
            print("         \(seenSpots)")
        } // end of for
    
    // method that deducts the visited spotes to the unvisited spots
    let unvisitedTotal = spots.count - visited.count
    
    // print message to the visited and unvisited spots
    print("^                                                   ^")
    print("^      - - - - - - - - - - - - - - - - - - -        ^")
    print("^                 Congratulations!                  ^")
    print("          You have been to \(visited.count) Tourist Spots,")
    print("              you have \(unvisitedTotal) left to go to! ")
    print("^                                                   ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^               Unvisited Destinations:             ^")
    
    // use for in loop to display unvisited destinations 
        for unseenSpots in unvisited {
            print("         \(unseenSpots)")
        } // end of for
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    
} // end of totalizer()

// initalize application
initialDis()

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

