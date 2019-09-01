<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>安装成功</title>
</head>

<body>
  <h1>环境安装成功！</h1>
  <h2>Apache与PHP信息：</h2>
  <?php echo '当前版本: ' . apache_get_version(); ?>
  <h2>MySQL信息：</h2>
  <a href="testSQL.php">点击测试</a>
  <h2>phpMyAdmin信息：</h2>
  <a href="http://manage.mysql.com">点击测试</a>
  <p>
    用户名：root
    <br />
    默认密码：Bigboss666!
  </p>
</body>

</html>