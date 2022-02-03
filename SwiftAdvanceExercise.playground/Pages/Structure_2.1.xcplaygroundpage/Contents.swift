//MARK: Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.

struct Work {
    
    var workLocation: String = "Ahmedabad"
    var workHours: Int = 9
    
    func projectNames(projectName: String...) {
        projectName.forEach{ name in
           print(name)
        }
    }
    
}

var work = Work()
print("Name of projects for the person are : \n")
work.projectNames(projectName: "E-Stationary", "HealthyMe", "E-library", "E-mart")
