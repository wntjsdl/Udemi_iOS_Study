
let myOptional: String?

myOptional = "Angela"

if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print("myOptional was found to be nil.")
}


let text: String = myOptional ?? "I am the default value"

print(text)
