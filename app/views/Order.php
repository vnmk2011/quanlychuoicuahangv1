<section>
  <div class="-container-order">
    <div class="container-table">
      <div class="table">
        <table class="table-order">
          <thead>
            <tr>
              <th>Số thứ tự</th>
              <th>Mã đơn</th>
              <th>Thời gian đặt hàng</th>
              <th>Thời gian giao hàng</th>
              <th>Thanh toán</th>
              <th>Tổng giá</th>
              <th>Trạng thái</th>
              <th>Hành động</th>
            </tr>
          </thead>
          <tbody>
            
            <?php $count = 0; 
            while($row = $data[0]->fetch_assoc()){ ?>
            <tr>
              <td><?php echo $count; $count++; ?></td>
              <td>FOODS<?php echo $row["id"] ?></td>
              <td><?php echo $row["create_order"] ?></td>
              <td>
                <?php
                  if($row["order_completion"] != NULL && $row["status"] == "delivered"){
                    echo $row["order_completion"];
                  }
                  else{
                    echo "Chưa giao hàng";
                  }
                ?>
              </td>
              <td>
                <?php
                  if($row["status"] == "delivered"){
                    echo "Đã thanh toán";
                  }
                  else{
                    echo "Chưa thanh toán";
                  }
                ?>
              </td>
              <td><?php echo $row["price_total"] ?></td>
              <td><?php 
                  $status = $row["status"];
                  switch($status){
                      case "pending":
                          $status = "Đang chờ xử lý";
                          break;
                      case "delivered":
                          $status = "Đã giao hàng";
                          break;
                      case "cancel":
                          $status = "Đã hủy";
                          break;
                      case "shipping":
                          $status = "Đang giao hàng";
                          break;
                  }
                  echo $status;
                ?></td>
              <td class="action">
              <?php
                if( $row["status"] != "delivered" && $row["status"] != "cancel"){?>
                  <button data-id="<?php echo $row["id"] ?>" onclick="cancelOrder(this)">Hủy đơn</button>
              <?php }?>
                <a href="#" target="_blank">Chi tiết</a>
              </td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</section>
