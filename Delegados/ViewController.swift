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
/*
 Sin se llega a tener muchas vistas, y es necesario el valor en controladores de un nivel asabajo es necesario agregarel delegado entodas para pasarlos datos
 */
extension ViewController: ColorSeleccionDelegate {
    func didTapChoiseColor(nombre: String) {
        self.lblOpcion.text = "Escogiste \(nombre)"
    }
}
