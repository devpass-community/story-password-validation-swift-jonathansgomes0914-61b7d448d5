import Foundation

@main
public struct PasswordValidation {

    public static func main() {
        let validation = PasswordValidation()
        let password = "123456"

        if validation.isValid(password: password) {

            print("valid password")
        } else {

            print("invalid password")
        }
    }

    func isValid(password: String) -> Bool {

        
        if let pattern = try? NSRegularExpression(pattern: "^[0-9]{6}$") {
            let results = pattern.matches(
                in: password, 
                range: NSRange(
                    location: 0, 
                    length: password.count))
            return results.count == 1
        }
        return false
    }
}
