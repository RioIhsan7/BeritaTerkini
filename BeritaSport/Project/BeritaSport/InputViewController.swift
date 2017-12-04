//
//  InputViewController.swift
//  BeritaSport
//
//  Created by Rio Ihsan on 04/12/17.
//  Copyright © 2017 Rio Ihsan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class InputViewController: UIViewController {
    @IBOutlet weak var etJudul: UITextField!
    @IBOutlet weak var etKategori: UITextField!
    @IBOutlet weak var etIsi: UITextField!
    @IBOutlet weak var etTanggal: UITextField!
    @IBOutlet weak var etTempat: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Simpan(_ sender: Any) {
        let nilaiJudul = etJudul.text!
        let nilaiKategori = etKategori.text!
        let nilaiIsi = etIsi.text!
        let nilaiTanggal = etTanggal.text!
        let nilaiTempat = etTempat.text!
        
        if ((nilaiJudul.isEmpty) || (nilaiKategori.isEmpty) || (nilaiIsi.isEmpty) || (nilaiTanggal.isEmpty) || (nilaiTempat.isEmpty)) {
            let alertWarning = UIAlertController(title: "Warning", message: "This is required", preferredStyle: .alert)
            let aksi = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertWarning.addAction(aksi)
            present(alertWarning, animated: true, completion: nil)
        }else{
            let params = ["judul_berita": nilaiJudul, "kategori": nilaiKategori, "isi_berita": nilaiIsi, "tempat_berita": nilaiTempat, "tanggal_berita": nilaiTanggal]
            print(params)

            let url  = "http://localhost/BeritaServer/index.php/Api/daftar"
            
            Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler: { (responseServer) in
                
                print(responseServer.result.isSuccess)
                
                if responseServer.result.isSuccess{
                    let json = JSON(responseServer.result.value as Any)
                    let alertWarning = UIAlertController(title: "Congrats", message: "Data berhasil disimpan", preferredStyle: .alert)
                    let aksi = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertWarning.addAction(aksi)
                    self.present(alertWarning, animated: true, completion: nil)
                    
                }
                
            })
        }
    }
}

