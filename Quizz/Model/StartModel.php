<?php
class StartModel extends BaseModel
{
    public function saveUser($useremail, $username)
    {
        try {
            $sql = "INSERT INTO users (Username, Email) VALUES ('$username', '$useremail')";
            $this->connect->query($sql);
        } catch (mysqli_sql_exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }

    public function checkUser($useremail, $username)
    {

        try {
            $sql = "SELECT * FROM users WHERE Email = '$useremail'";
            $result = $this->connect->query($sql);
            if (mysqli_num_rows($result) > 0) {
                return true;
            } else {
                return false;
            }
        } catch (mysqli_sql_exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}
