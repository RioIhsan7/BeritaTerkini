//
//  BeritaTableViewController.swift
//  BeritaSport
//
//  Created by Rio Ihsan on 04/12/17.
//  Copyright © 2017 Rio Ihsan. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class BeritaTableViewController: UITableViewController {
    
    var noSelected:String?
    var judulSelected:String?
    var kategoriSelected:String?
    var isiSelected:String?
    var tempatSelected:String?
    var tanggalSelected:String?
    
    var berita = [Berita]()
    var arrKar = [[String:AnyObject]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("http://localhost/BeritaServer/index.php/Api/getBerita").responseJSON{(responseData)->Void in
            if ((responseData.result.value) != nil){
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                if let resData = swiftyJsonVar["data"].arrayObject{
                    self.arrKar = resData as! [[String:AnyObject]]
                }
            }
            
            if self.arrKar.count > 0 {
                self.tableView.reloadData()
            }
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrKar.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "berita", for: indexPath) as! BeritaTableViewCell

        // Configure the cell...
        var dict = arrKar[indexPath.row]
        cell.judul.text = dict["judul_berita"] as? String
        cell.kategori.text = dict["kategori"] as? String

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row\(indexPath.row)selected")
        let task = arrKar[indexPath.row]
        noSelected = task ["no_berita"] as? String
        judulSelected = task ["judul_berita"] as? String
        kategoriSelected  = task ["kategori"] as? String
        isiSelected = task ["isi_berita"] as? String
        tempatSelected = task ["tempat_berita"] as? String
        tanggalSelected = task ["tanggal_berita"] as? String
        
        performSegue(withIdentifier: "passBerita", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passBerita" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let controller = segue.destination as! DetailViewController
                let value = arrKar[indexPath.row]
                controller.eNo = value["no_berita"] as? String
                controller.eJudul = value["judul_berita"] as? String
                controller.eKategori = value["kategori"] as? String
                controller.eIsi = value["isi_berita"] as? String
                controller.eTempat = value["tempat_berita"] as? String
                controller.eTanggal = value["tanggal_berita"] as? String
            }
            
        }
    }
}

