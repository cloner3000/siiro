<?php echo $this->render_table_name(); ?>
<?php if ($this->is_create or $this->is_csv or $this->is_print){?>
        <div class="xcrud-top-actions">
            <div class="btn-group pull-right">
                <?php echo $this->print_button('w3-button w3-deep-orange','fa fa-print');
                echo $this->csv_button('w3-button w3-blue','fa fa-file'); ?>
            </div>
            <?php echo $this->add_button('w3-button w3-green','fa fa-plus'); ?>
            <div class="clearfix"></div>
        </div>
<?php } ?>
        <div class="xcrud-list-container">
        <table class="xcrud-list w3-table w3-hoverable w3-border w3-striped">
            <thead>
                <?php echo $this->render_grid_head('tr', 'th'); ?>
            </thead>
            <tbody>
                <?php echo $this->render_grid_body('tr', 'td'); ?>
            </tbody>
            <tfoot>
                <?php echo $this->render_grid_footer('tr', 'td'); ?>
            </tfoot>
        </table>
        </div>
        <div class="xcrud-nav">
            <?php echo $this->render_limitlist(true); ?>
            <?php echo $this->render_pagination(); ?>
            <?php echo $this->render_search(); ?>
            <?php echo $this->render_benchmark(); ?>
        </div>
