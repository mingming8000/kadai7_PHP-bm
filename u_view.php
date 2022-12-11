<?php
//1.GETでid値を取得
$id=$_GET["id"];

//2.DB接続など
try {
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}


//3.SELECT * FROM gs_an_table WHERE id=:id;
$sql = "SELECT * FROM gs_bm_table_221211 WHERE id=:id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();


//4.データ表示
$view="";
if($status==false) {
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

} else {
  //１データのみ抽出の場合はwhileループで取り出さない
  $row = $stmt->fetch();

}
?>



<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>データ更新</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="update.php">
  <div class="jumbotron">
   <legend>登録の確認</legend>
   本の名前：<input type="text" name="book_name" value="<?=$row["book_name"]?>"><br>
   <!-- <a href="<?=$row["book_URL"]?>" ></a><br> -->
   <!-- 本のリンク先<div><a href="<?=$row["book_URL"]?>" ></a></div><br> -->
   <a href= '<?=$row["book_URL"]?>'>リンク先</a><br>
   コメント<textArea name="comment" rows="4" cols="40"><?=$row["comment"]?></textArea><br>
   <input type="hidden" name="id" value="<?=$row["id"]?>">
   <input type="submit" value="送信">


  </div>
</form>
<!-- Main[End] -->


</body>
</html>
