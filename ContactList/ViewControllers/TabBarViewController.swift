
import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()

    }
    
    private func setupViewControllers() {
        guard let personsListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let persons = Person.getPersonsList()
        personsListVC.persons = persons
        sectionVC.persons = persons
        
    }
}
