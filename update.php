<?php
//1.POSTでid,name,email,naiyouを取得
$id     =$_POST["id"];
$book_name   =$_POST["book_name"];
$book_URL  =$_POST["book_URL"];
$comment =$_POST["comment"];

//2.DB接続
try {
  $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//3.UPDATE gs_an_table SET ....; で更新(bindValue)
$sql = 'UPDATE gs_bm_table_221211 SET book_name=:book_name,book_URL=:book_URL,comment=:comment WHERE id=:id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':book_name',  $book_name,  PDO::PARAM_STR);
$stmt->bindValue(':book_URL',  $book_URL,  PDO::PARAM_STR);
$stmt->bindValue(':comment',  $comment,  PDO::PARAM_STR);
$stmt->bindValue(':id',  $id,  PDO::PARAM_INT);    //更新したいidを渡す
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("QueryError:".$error[2]);

}else{
  //select.phpへリダイレクト
  header("Location: select.php");
  exit;

}



?>
