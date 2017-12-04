//
//  DetailViewController.swift
//  BeritaSport
//
//  Created by Rio Ihsan on 04/12/17.
//  Copyright © 2017 Rio Ihsan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var no: UILabel!
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var kategori: UILabel!
    @IBOutlet weak var isi: UITextView!
    @IBOutlet weak var tanggal: UILabel!
    @IBOutlet weak var tempat: UILabel!
    
    var eNo:String?
    var eJudul:String?
    var eKategori:String?
    var eIsi:String?
    var eTanggal:String?
    var eTempat:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        no.text = eNo!
        judul.text = eJudul!
        kategori.text = eKategori!
        isi.text = eIsi!
        tanggal.text = eTanggal!
        tempat.text = eTempat!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
