
import UIKit

class PersonsListViewController: UITableViewController {

    private let personsList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    

    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.person = personsList[indexPath.row]
    }
}
