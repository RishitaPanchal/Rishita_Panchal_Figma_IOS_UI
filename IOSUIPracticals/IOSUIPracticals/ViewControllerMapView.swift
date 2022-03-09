import UIKit
import MapKit

class ViewControllerMapView: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var selcetedCountry: UITextField!
    
    // MARK: Instance variable
    let countries = ["Bopal", "Maninagr", "Express highway"]
    let countryDict = [
                        "Bopal" : CLLocationCoordinate2D(latitude: 23.033279, longitude: 72.460358),
                        "Maninagr" : CLLocationCoordinate2D(latitude: 22.996170, longitude: 72.599586),
                        "Express highway" : CLLocationCoordinate2D(latitude: 19.112092, longitude: 72.855318)
                      ]
    var countryPickerView = UIPickerView()
    
    // MARK: Overidden methods
    override func viewDidLoad() {
        super.viewDidLoad()
        selcetedCountry.inputView = countryPickerView
        countryPickerView.delegate = self
        countryPickerView.dataSource = self
    }
    
    // MARK: IBActions
    @IBAction func mapViewtype(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            mapView.mapType = .satellite
        } else {
            mapView.mapType = .standard
        }
    }
    
    // MARK: Methods
    func mapVieww(_ location: CLLocationCoordinate2D, _ title: String) {
        mapView.setRegion(MKCoordinateRegion(center: location, latitudinalMeters: 1500, longitudinalMeters: 1500), animated: true)
        let pin = PinAnnotation(title: title, coordinate: location)
        mapView.addAnnotation(pin)
    }
    
}

// MARK: Pickerview delegate
extension ViewControllerMapView: UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

}

// MARK: Pickerview datasource
extension ViewControllerMapView: UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        countryDict.count
    }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selcetedCountry.text = countries[row]
        selcetedCountry.resignFirstResponder()
        if let location = countryDict[countries[row]] {
            mapVieww(location, countries[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }

}
