<li>
  <a href="/Menu/details/<?php echo $row["id"] ?>">
    <span class="inner-item-search">
      <img
        src="<?php echo $row["image"] ?>"
        width="70px"
        alt=""
      />
      <span class="name-price-search">
        <p><?php echo $row["name"] ?></p>
        <p><?php echo number_format((int) $row["price"]) . " đ"; ?></p>
      </span>
    </span>
  </a>
</li>
