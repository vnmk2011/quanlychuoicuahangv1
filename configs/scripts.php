<?php
$jsFiles = [
    "/public/js/logout.js",
    "/public/js/addCart.js",
    "/public/js/order.js",
    "/public/js/cart.js",
    "/public/js/search.js",
    "/public/js/validate.js"
];

?>

<?php foreach ($jsFiles as $jsFile): ?>
    <script src="<?php echo $jsFile; ?>"></script>
<?php endforeach; ?>
