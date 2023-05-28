<div class="alert-popup"></div>
<section class="products">
  <div class="container-product">
    <div class="tool-bar">
      <div class="product-type">
        <ul>
          <li><a href="#">Hamburger</a></li>
          <li><a href="#">Bánh mì</a></li>
          <li><a href="#">pizza</a></li>
          <li><a href="#">Bánh cuốn</a></li>
          <li><a href="#">Bánh kem</a></li>
        </ul>
      </div>
    </div>
    <div class="product-items"></div>
    <?php 
      foreach ($data[0] as $key => $value) {
        echo $value;
      }
    ?>
  </div>
</section>
<section class="pagination">
  <div class="container-pagination"></div>
</section>
