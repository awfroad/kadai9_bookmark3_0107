<!DOCTYPE html>
<html lang="ja">
    
    <head>
        <meta charset="UTF-8">
        <title>データ登録</title>
        <link href="css/reset.css" rel="stylesheet">
        <link href="css/login.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=M+PLUS+1p&display=swap" rel="stylesheet">
    </head>

    <body>
        
        <div class="wrapper">

            <form class="form" name="form1" action="login_act.php" method="post">
                <table class="">
                    <tr>
                        <th>ID:</th>
                        <td>
                            <input type="text" name="lid" />
                        </td>
                    </tr>
                    <tr>
                        <th>PW:</th>
                        <td>
                            <input type="password" name="lpw" />
                        </td>
                    </tr>
                </table>
                <div class="btn_area">
                    <input class="btn" type="submit" value="LOGIN"/>
                </div>
            </form>
                
                <!-- <a href="logout.php">LOGOUT</a> -->
                

        </div>

    </body>

</html>