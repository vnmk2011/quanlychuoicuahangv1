<?php
$jsFiles = [
    "/public/js/logout.js",
    "/public/js/addCart.js",
    "/public/js/order.js",
    "/public/js/cart.js"
];
$cssFiles = [
    "/public/css/app.css",
    "/public/css/Branch.css",
    "/public/css/Home.css",
    "/public/css/Login.css",
    "/public/css/Menu.css",
    "/public/css/Order.css",
    "/public/css/Register.css",
]
?>

<?php foreach ($jsFiles as $jsFile): ?>
    <script src="<?php echo $jsFile; ?>"></script>
<?php endforeach; ?>
