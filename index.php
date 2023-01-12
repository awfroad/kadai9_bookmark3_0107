<!DOCTYPE html>
<html lang="ja">
    
    <head>
        <meta charset="UTF-8">
        <title>データ登録</title>
        <link href="css/reset.css" rel="stylesheet">
        <link href="css/index.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=M+PLUS+1p&display=swap" rel="stylesheet">
</head>

<body>

    <!-- Main[Start] -->
    <div class="wrapper">

        <!-- Head[Start] -->
        <header>
            <div class="navbar">
                <a class="navbar_btn" href="login.php">LOGIN</a>
                <a class="navbar_btn" href="logout.php">LOGOUT</a>
            </div>
        </header>
        <!-- Head[End] -->

        <main>
            <table class="search">
                <form method="get" action="insert.php">
                    <tr>
                        <th>検索</th>
                        <th>一覧</th>
                    </tr>
                    <tr>
                        <td class="td1">
                            <div class="search_window">
                                <input id="query" type="text" name="query">
                                <input class="submit" type="submit" value="送信" >
                            </div>
                        </td>
                        <td class="td2">
                            <a class="" href="select.php">
                                <img src="img/Google_Chrome_icon_(February_2022).svg.png" alt="">
                            </a>
                        </td>
                    </tr>
                </form>
            </table>
        </main>
    </div>
    <!-- Main[End] -->

</body>

</html>
