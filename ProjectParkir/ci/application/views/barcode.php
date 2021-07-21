<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- css -->
    <?php $this->load->view('include/base_css'); ?>
    <link rel="stylesheet" href="<?php echo base_url('assets') ?>/plugins/datatables/dataTables.bootstrap4.min.css">
    <!-- Memanggil file .css untuk style saat data dicari dalam filed -->
    <link href='<?php echo base_url();?>assets/dist/js/jquery.autocomplete.css' rel='stylesheet' />
    <title>Barcode</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/css/bootstrap.css'?>">
</head>
<body class="hold-transition sidebar-mini">
  <!-- navbar -->
  <?php $this->load->view('include/base_nav'); ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Barcode Data Mahasiswa</h1>
              </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="<?php echo base_url('Barcode') ?>">Barcode</a></li>
              </ol>
            </div>
          </div>
          </div><!-- /.container-fluid -->
          </section>
    <!-- Main content -->
        <section class="content">
          <div class="container-fluid">
            <div class="row">
     <div class="container">
        <div class="row">
            <br><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" href="#myModal">Add New</button></br>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>NIM</th>
                        <th>NAMA</th>
                        <th>PRODI</th>
                        <th>QR CODE</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($data->result() as $row):?>
                    <tr>
                        <td style="vertical-align: middle;"><?php echo $row->nim;?></td>
                        <td style="vertical-align: middle;"><?php echo $row->nama;?></td>
                        <td style="vertical-align: middle;"><?php echo $row->prodi;?></td>
                        <td><img style="width: 100px;" src="<?php echo base_url().'assets/images/'.$row->qr_code;?>"></td>
                    </tr>
                    <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div>
 
    <!-- Modal add new mahasiswa-->
    <form action="<?php echo base_url().'index.php/Barcode/simpan'?>" method="post">
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add New Mahasiswa</h4>
              </div>
              <div class="modal-body">
             
                  <div class="form-group">
                    <label for="nim" class="control-label">NIM:</label>
                    <input type="text" name="nim" class="form-control" id="nim">
                  </div>
                  <div class="form-group">
                    <label for="nama" class="control-label">NAMA:</label>
                    <input type="text" name="nama" class="form-control" id="nama">
                  </div>
                  <div class="form-group">
                    <label for="prodi" class="control-label">PRODI:</label>
                    <select name="prodi" class="form-control" id="prodi">
                        <option>Teknik Informatika</option>
                        <option>Teknik Komputer</option>
                        <option>Manajemen Informatika</option>
                    </select>
                  </div>
             
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
            </div>
          </div>
        </div>
    </form>
 
    <script type="text/javascript" src="<?php echo base_url().'assets/js/jquery-2.1.4.min.js'?>"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/js/bootstrap.js'?>"></script>
</body>
</html>