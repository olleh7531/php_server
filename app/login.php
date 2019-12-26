<?
    include 'include/config.php';
    header('content-type: text/html; charset=utf-8'); 

    // 데이터베이스 접속 문자열. (db위치, 유저 이름, 비밀번호)
    $connect=mysql_connect(DBHOST, DBID, DBPW) or die( "SQL server에 연결할 수 없습니다.");

    mysql_query("SET NAMES UTF8");
    // 데이터베이스 선택
    mysql_select_db(DBNAME,$connect);

    //세션 시작
    session_start();
//    $id = $_POST[u_id];
//    $pw = $_POST[u_pw];
    $id = $_REQUEST[u_id];
    $pw = $_REQUEST[u_pw];

    $sql = "SELECT userID FROM member WHERE userID = '$id' AND userPW = '$pw'";
            
    $result = mysql_query($sql);

    if($result){
        $row = mysql_fetch_array($result);
        if(is_null($row[userID])){
            echo "찾을 수 없습니다";
        }else{
            echo "$row[userID]";
        }
    }else{
        echo mysql_errno($connect);
    }
?>
