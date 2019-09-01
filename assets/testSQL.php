  <?php
  // 主机名称
  $host = 'web-plus.com';
  // 用户名称
  $user = 'root';
  // 用户密码
  $password = 'Bigboss666!';
  // 数据库名称
  $dbName = 'mysql';

  $link = new mysqli($host, $user, $password, $dbName);

  if ($link->connect_error) {

    die("连接失败 ：错误为" . $link->connect_error . "默认密码为：Bigboss666! 如果连接失败，请考虑是否设置了自定义密码。自定义密码的设置请打开U:\\www\\wwwroot\\webplus\\index.php，并修改第7行的内容将字符串改成自定义的密码再尝试。");
  }
  echo "连接成功";