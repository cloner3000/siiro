<div class="w3-container">
    <div class="w3-row">
        <div class="w3-half">
            <div class="w3-red w3-padding">
                <i class="fa fa-warning"></i> Cukup Upload 1 file perbukti dan cantumkan Nominal
            </div>
            <br>
            <div class="w3-theme w3-padding">
                <i class="fa fa-info"></i> List Upload Bukti
            </div>
            <?php
            $ais_periode_tahun = $_SESSION['ais_periode_tahun'];
            $peserta_id = $_SESSION['peserta_id'];

            $username = $_SESSION['nama'];

            // set setting
            $jenis = 'bukti_transfer';
            $nama = 'bukti_transfer';

            $xcrud->table('arsip');
            $xcrud->where('jenis_arsip =','bukti_transfer');
            $xcrud->where('pemilik =',$peserta_id);
            $xcrud->table_name('Data Bukti Transfer');

            // fields dan kolom
            $xcrud->columns('file,keterangan');
            $xcrud->fields('file,keterangan');

            // label
            $xcrud->label('keterangan','Nominal');

            // required
            $xcrud->validation_required('file,nominal');

            // menganti tipe file
            $xcrud->change_type('file','file', '', array('path'=> '../uploads/ais/bukti','width' => 1000, 'height' => 1000));
            $xcrud->change_type('keterangan', 'price');

            // hide tombol
            $xcrud->hide_button('save_new,save_edit');

            // pass variable
            $xcrud->pass_var('jenis_arsip', 'bukti_transfer');
            $xcrud->pass_var('pemilik', $peserta_id);
            // $xcrud->unset_add();
            // $xcrud->unset_edit();
            $xcrud->unset_remove();
            $xcrud->unset_view();
            $xcrud->unset_csv();
            $xcrud->unset_limitlist();
            $xcrud->unset_numbers();
            $xcrud->unset_pagination();
            $xcrud->unset_print();
            $xcrud->unset_search();
            $xcrud->unset_title();
            $xcrud->unset_sortable();
            echo $xcrud->render();
            ?>
        </div>
    </div>
</div>