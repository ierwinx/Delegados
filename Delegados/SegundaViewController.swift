import UIKit

protocol ColorSeleccionDelegate: class {
    func didTapChoiseColor(nombre: String)
}

class SegundaViewController: UIViewController {
    
    weak var seleccionDelegate: ColorSeleccionDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rojoAction(_ sender: Any) {
        seleccionDelegate?.didTapChoiseColor(nombre: "rojo")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func azulAction(_ sender: Any) {
        seleccionDelegate?.didTapChoiseColor(nombre: "azul")
        self.dismiss(animated: true, completion: nil)
    }
    
}
