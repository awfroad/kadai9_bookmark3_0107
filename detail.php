<?php

session_start();
require_once('funcs.php');
loginCheck();

$No = $_GET['id'];
$view1 = "";
$view2 = "";

require_once('funcs.php');
$pdo = db_conn();

$stmt = $pdo->prepare('SELECT * FROM googlebooks_table WHERE No = :No;');
$stmt->bindValue(':No', $No, PDO::PARAM_INT); //PARAM_INTなので注意
$status = $stmt->execute();

if ($status === false) {
    //*** function化する！******\
    $error = $stmt->errorInfo();
    exit('SQLError:' . print_r($error, true));
} else {
    $result = $stmt->fetch();
}

    $query = $result['query'];
    $title = h($result['title']);
    $authors = h($result['authors']);
    $publishedDate = h($result['publishedDate']);
    $link = $result['link'];
    $thumbnail = $result['thumbnail'];
    $previewLink = $result['previewLink'];
    $date = $result['date'];

    $view1 .= '<tr>';
    $view1 .= '<td>'.$No.'</td>';
    $view1 .= '<td>'.$query.'</td>';
    $view1 .= '<td>'.$date.'</td>';
    $view1 .= '<td><a target="_blank" href="' . $previewLink . '"><img src="'. $thumbnail .'"></a></td>';
    $view1 .= '</tr>';
    $view2 .= '<tr>';
    $view2 .= '<td>' . $authors . '</td>';
    $view2 .= '<td>' . $publishedDate . '</td>';
    $view2 .= '<td><a href="delete.php?id=' . $No . '">削除</a></td>';
    $view2 .= '<td><a target="_blank" href="' . $link . '">' . $title . '</a></td>';
    $view2 .= '</tr>';

?>

<!--
２．HTML
以下にindex.phpのHTMLをまるっと貼り付ける！
(入力項目は「登録/更新」はほぼ同じになるから)
※form要素 input type="hidden" name="id" を１項目追加（非表示項目）
※form要素 action="update.php"に変更
※input要素 value="ここに変数埋め込み"
-->

<!DOCTYPE html>
<html lang="ja">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ブックマーク表示</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/detail.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=M+PLUS+1p&display=swap" rel="stylesheet">

</head>
<body id="main">
    
    <div class="wrapper">

        <!-- Head[Start] -->
        <header>
            <div class="navbar">
                <a class="navbar_btn" href="index.php">検索</a>
                <a class="navbar_btn" href="select.php">一覧</a>
                <a class="navbar_btn" href="logout.php">LOGOUT</a>
            </div>
        </header>
        <!-- Head[End] -->
        
        <div class="container">

            <table>
                <tr>
                    <th>No</th>
                    <th>検索ワード</th>
                    <th>登録日</th>
                    <th>画像<br>※クリック→レビュー</th>
                </tr>
                    <?= $view1 ?>
                <tr>
                    <th>著者</th>
                    <th>出版日</th>
                    <th>削除</th>
                    <th>タイトル<br>※クリック→Google Books</th>
                </tr>
                    <?= $view2 ?>
                
                <tr>
                    <th colspan="4">メモ</th>
                </tr>
                <tr>
                    <td colspan="4">
                        <form method="POST" action="update.php">
                            <div class="">
                                <fieldset>
                                    <label><textarea name="memo" rows="5" cols="90"><?= h($result['memo'])?></textarea></label><br>
                                    <input type="hidden" name="No" value = "<?= h($No)?>">
                                    <input class="btn" type="submit" value="保存">
                                </fieldset>
                            </div>
                        </form>
                    </td>
                </tr>

            </table>
        </div>

    </div>

</body>
</html>

