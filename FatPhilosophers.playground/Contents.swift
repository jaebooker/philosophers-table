import UIKit
print("is playground asleep again?")
let philsophers: [String] = ["Decartes", "Sacrates", "Confucious", "Kant", "Nietzsche"]
var forks: [Bool] = [false,false,false,false,false]
var forkTaken: [Int] = [-1]
func eat(philsopher: Int) -> Bool {
    if philsopher == 4 {
        if (((forks[philsopher] == false) && (forks[0] == false)) && ((forkTaken[0] == philsopher) || ((forkTaken[0] != philsopher) && (forkTaken[0] != 0)))) {
            forks[philsopher] = true
            forks[0] = true
            if forkTaken[0] == philsopher {
                forkTaken[0] = -1
            }
            print("\(philsophers[philsopher]) is stuffing his face, getting sauce in his mustache")
            return true
        }
    } else {
        if (((forks[philsopher] == false) && (forks[philsopher+1] == false)) && ((forkTaken[0] == philsopher) || ((forkTaken[0] != philsopher) && (forkTaken[0] != philsopher+1)))) {
            forks[philsopher] = true
            forks[philsopher+1] = true
            if forkTaken[0] == philsopher {
                forkTaken[0] = -1
            }
            print("\(philsophers[philsopher]) is eating")
            return true
        }
    }
    return false
}
func readyToEat(philsopher: Int) {
    if philsopher == 4 {
        if (forks[philsopher] == false) && (forkTaken[0] == -1) {
            forkTaken[0] = philsopher
            print("\(philsophers[philsopher]) has taken a fork, remarking how waiting to eat is a failure of Christian morals")
        }
        if (forks[0] == false) && (forkTaken[0] == -1) {
            forkTaken[0] = philsopher
            print("\(philsophers[philsopher]) has taken a fork, remarking that what does not eat us, we eat, and it makes us stronger")
        }
    } else {
        if (forks[philsopher] == false) && (forkTaken[0] == -1) {
            forkTaken[0] = philsopher
            print("\(philsophers[philsopher]) has taken a fork")
        }
        if (forks[philsopher+1] == false) && (forkTaken[0] == -1) {
            forkTaken[0] = philsopher
            print("\(philsophers[philsopher]) has taken a fork")
        }
    }
}
func think(philsopher: Int) {
    if philsopher == 4 {
        forks[philsopher] = false
        forks[0] = false
        print("\(philsophers[philsopher]) burps as he finishes eating. Remarking that this is nothing to be ashamed of, as the great Dionysus would often burp loudly, and that it is only because of Christianity that we have deluded ourselves into being ashamed of it")
    } else {
        forks[philsopher] = false
        forks[philsopher+1] = false
        print("\(philsophers[philsopher]) leans back, content, his belly full")
    }
}
for _ in 0...20 {
    let number = Int.random(in: 0 ..< 4)
    if eat(philsopher: number) {
        sleep(2)
    } else {
        readyToEat(philsopher: number)
    }
    let number2 = Int.random(in: 0 ..< 4)
    think(philsopher: number2)
}
print("success")
//let tableOperation = BlockOperation()
//for philosoph in 0...philsophers.count-1 {
//    tableOperation.addExecutionBlock {
//        var eaten = false
//        while eaten == false {
//            if eat(philsopher: philosoph) {
//                sleep(2)
//                eaten = true
//            } else {
//                readyToEat(philsopher: philosoph)
//            }
//        }
//        think(philsopher: philosoph)
//    }
//}
//tableOperation.completionBlock = {
//    print("All philosophers are done eating and are very fat")
//}
//
//let operationQueue = OperationQueue()
//operationQueue.addOperation(tableOperation)
