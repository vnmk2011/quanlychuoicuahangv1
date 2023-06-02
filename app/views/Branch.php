<section class="branch">
  <div class="container-branch">
    <div class="container-item">
      <?php
        while ($row = $data[0]->fetch_assoc()) {?>
      <div class="item-branch">
        <a href="#"><img src="/public/images/<?php echo $row['img']; ?>" alt="Chi nhánh" /></a>
        <div class="item-branch-content">
          <div class="title"><h3><?php echo $row['name']; ?></h3></div>
          <div class="address"><p><?php echo $row['address']; ?></p></div>
        </div>
      </div>
      <?php }?>
    </div>
  </div>
</section>
