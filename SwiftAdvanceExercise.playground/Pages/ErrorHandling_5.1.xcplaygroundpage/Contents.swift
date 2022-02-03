//MARK:  Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.

enum CustomErrors: Error {
    
    case tooShortPassword
    case emptyPassword

}

func verifyPassword(password: String) throws {
    if 0...8 ~= password.count{
        throw CustomErrors.tooShortPassword
    } else if password.count == 0 {
        throw CustomErrors.emptyPassword
    } else {
        print("Password : \(password)")
    }
}

do {
    try verifyPassword(password: "1234")
} catch CustomErrors.tooShortPassword {
    print("Password is too short!!")
} catch CustomErrors.emptyPassword {
    print("Password feild should not be empty!!")
} catch {
    print("Undefined error!!")
}
