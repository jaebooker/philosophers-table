import UIKit

let philsophers = ["Decartes", "Sacrates", "Confucious", "Kant", "Nietzsche"]
let forks = [false,false,false,false,false]

func eat(philsopher: Int) -> Bool {
    if philsopher == 4 {
        if (forks[philsopher] == false) && (forks[0] == false) {
            forks[philsopher] == true
            forks[0] == true
            print("\(philsophers[philsopher]) is stuffing his face, getting sauce in his mustache")
            return true
        }
    } else {
        if (forks[philsopher] == false) && (forks[philsopher+1] == false) {
            forks[philsopher] == true
            forks[philsopher+1] == true
            print("\(philsophers[philsopher]) is eating")
            return true
        }
    }
    return false
}
func readyToEat(philsopher: Int) -> Int {
    if philsopher == 4 {
        if forks[philsopher] == false {
            print("\(philsophers[philsopher]) has taken a fork, remarking how waiting to eat is a failure of Christian morals")
            return philsopher
        }
        if forks[0] == false {
            print("\(philsophers[philsopher]) has taken a fork, remarking that what does not eat us, we eat, and it makes us stronger")
            return 0
        }
    } else {
        if forks[philsopher] == false {
            print("\(philsophers[philsopher]) has taken a fork")
            return philsopher
        }
        if forks[philsopher+1] == false {
            print("\(philsophers[philsopher]) has taken a fork")
            return philsopher+1
        }
    }
    return -1
}
func think(philsopher: Int) {
    if philsopher == 4 {
        forks[philsopher] == false
        forks[0] == false
        print("\(philsophers[philsopher]) burps as he finishes eating. Remarking that this is nothing to be ashamed of, as the great Dionysus would often burp loudly, and that it is only because of Christianity that we have deluded ourselves into being ashamed of it")
    } else {
        forks[philsopher] == false
        forks[philsopher+1] == false
        print("\(philsophers[philsopher]) leans back, content, his belly full")
    }
}
