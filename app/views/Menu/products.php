<div class="alert-popup"></div>
<section class="products">
  <div >

  </div>
  <div class="container-product">
    <div class="tool-bar">
      <div class="product-type ">
        <ul>
          <?php while($row = $data[5]->fetch_assoc()){?>
          <li><a href="<?php echo "/Menu/category/". $row['id'] ;?>"><?php echo $row["name"]; ?></a></li>
          <?php }?>
        </ul>
      </div>
    </div>
    <div class="product-items">
      <?php while($row = $data[0]->fetch_assoc()){?>
      <div class="item">
        <div class="img-content">
          <figure>
            <img
              src="/public/images/<?php echo $row['image'];?>"
              alt="<?php echo $row['name'] ?>"
              loading="lazy"
            />
          </figure>
        </div>
        <div class="description">
          <div class="name-product">  
            <h3><a href="/Menu/details/<?php echo $row["id"] ?>"><?php echo $row["name"] ?></a></h3>
            <?php if($row["discount"] > 0 && $row["discount"] != NULL){ ?>
            <span class="sale" title="Giảm giá <?php echo $row["discount"] ?>%">-<?php echo $row["discount"] ?>%</span>
            <?php } ?>
          </div>
        </div>
        <div class="price-add">
          <div class="price"><span title="Giá sản phẩm"><?php echo number_format((int)$row['price']); ?>đ</span></div>
          <div class="add">
            <a
              title="Thêm vào giỏ hàng"
              id="product-id-<?php echo $row["id"]; ?>"
              data-id="<?php echo $row["id"]; ?>"
              data-name="<?php echo $row["name"]; ?>"
              data-price="<?php echo (int)$row['price']; ?>"
              data-image="/public/images/product/<?php echo $row['image'];?>"
              data-quantity="1"
              onclick="addCart(this)"
              ><i class="fa-solid fa-cart-plus"></i
            ></a>
          </div>
        </div>
      </div>
      <?php }?>
    </div>
  </div>
</section>
<section class="pagination">
  <div class="container-pagination">
    <a href="/Menu/page/<?php echo $data[1]; ?>" title="Trang trước">«</a>
    <?php for ($i = 1; $i <= $data[4]; $i++){ ?>
      <a href="/Menu/page/<?php echo $i; ?>" title="Trang <?php echo $i; ?>" <?php echo $data[3] == $i ?'class="active"': ""; ?>><?php echo $i; ?></a>
    <?php } ?>
    <a href="/Menu/page/<?php echo $data[2]; ?>" title="Trang sau">»</a>     
  </div>
</section>
