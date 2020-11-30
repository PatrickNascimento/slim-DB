<?php

namespace Controllers;
use Models\Answer;


class Answers {

    public static function add_answer($answer,$question_id,$user_id){
        $answer = Answer::create(['answer'=>$answer,'question_id'=>$question_id,'user_id'=>$user_id]);return $answer;
    }

    public function answers()    {
        return $this->hasMany('\Models\Answer');
    }

    public static function update_answer($answer_id,$new_answer){
        $answer = Answer::find($answer_id);
        $answer->answer = $new_answer;
        $updated = $answer->save();
        return $updated;
    }


}

?>