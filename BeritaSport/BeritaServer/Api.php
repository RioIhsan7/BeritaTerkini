 <?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api extends CI_Controller {

public function getBerita(){
$q =$this->db->get('tb_sport');

if($q->num_rows()>0){
$data['result'] = true ;
$data['pesan'] = 'Data Ada';
$data['data'] = $q->result();
}
else{
$data['result'] = false ;
$data['pesan'] = 'Data, tidak ada';
}

echo json_encode($data);
}

public function daftar(){ 
$data = array();
$judul = $this->input->post('judul_berita');
$kategori = $this->input->post('kategori');
$isi = $this->input->post('isi_berita');
$tempat = $this->input->post('tempat_berita');
$tanggal = $this->input->post('tanggal_berita');

$this->db->where('judul_berita', $judul);

$q = $this->db->get('tb_sport');

if($q->num_rows() > 0) {
$data['result'] = 'false';
$data['msg'] = 'Email anda sudah terdaftar, silahkan untuk login.';
}else{	
$simpan = array();

$simpan['judul_berita'] = $judul;
$simpan['kategori'] = $kategori;
$simpan['isi_berita'] = $isi;
$simpan['tempat_berita'] = $tempat;
$simpan['tanggal_berita'] = $tanggal;

$status = $this->db->insert('tb_sport',$simpan);

if($status){	
$data['result'] = 'true';
$data['msg'] = 'Pendaftaran berhasil';

}else{
$data['result'] = 'false';
$data['msg'] = 'Pendafatran gagal, silahkan coba kembali';
}
}
echo json_encode($data);
}
}
