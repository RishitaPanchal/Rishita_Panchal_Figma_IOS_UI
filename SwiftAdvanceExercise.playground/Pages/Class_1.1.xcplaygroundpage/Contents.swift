// MARK: Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.

class Project {
    
    var projectId = 190173107015
    var projectTitle = "Automatic Food Recommendation using Wearable Device"
    
    func dispDetails() {
        print("Project id is : \(projectId)")
        print("Project name is: \(projectTitle)")
    }
    
}

var project = Project()
project.dispDetails()
print("\nUpdated project details are: ")

project.projectId = 190173107021
project.projectTitle = "Governement services for women"
print(project.projectId)
print(project.projectTitle)
