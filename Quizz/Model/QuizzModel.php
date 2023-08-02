<?php
class QuizzModel extends BaseModel
{
    public function loadQuiz($numberQuiz)
    {
        try {
            $data = [];
            for ($i = 0; $i < 10; $i++) {
                $sql = "SELECT * FROM questions WHERE QuestionID = $numberQuiz[$i]";
                $query = $this->connect->query($sql);
                $quiz = mysqli_fetch_assoc($query);
                $sql = "SELECT * FROM options WHERE QuestionID = $numberQuiz[$i]";
                $query = $this->connect->query($sql);
                while ($row = mysqli_fetch_assoc($query)) {
                    $data[$quiz['Content']][] = $row['Content'];
                }
            }

            return $data;
        } catch (mysqli_sql_exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}
