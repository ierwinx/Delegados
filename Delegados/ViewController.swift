import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblOpcion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseColorButton(_ sender: Any) {
        guard let seleccionVC = storyboard?.instantiateViewController(identifier: "SegundaViewController") as? SegundaViewController else {
            return
        }
        seleccionVC.seleccionDelegate = self
        present(seleccionVC, animated: true, completion: nil)
    }
    
}

extension ViewController: ColorSeleccionDelegate {
    func didTapChoiseColor(nombre: String) {
        self.lblOpcion.text = "Escogiste \(nombre)"
    }
}
