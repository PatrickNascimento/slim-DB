<?php


namespace Controllers;
use Models\Question;



class Questions{

    public static function get_questions_with_answers()
    {
        $questions = Question::with('answers')->get()->toArray();
        return $questions;
    }

    public static function create_question($question, $user_id)    {

        $question = Question::create(['question' => $question, 'user_id' => $user_id]);
        return $question;
    }

    public static function get_questions_with_users(){
        $questions = Question::with('user')->get()->toArray();
        return $questions;
    }

    public static function get_question_answers_upvotes($question_id){
        $questions = Question::find($question_id)->answers()->with('upvotes')->get()->toArray();
        return $questions;
    }

    public static function question_count($user_id){
        $count = Question::where('user_id',$user_id)->count();
        return $count;
    }

    public static function delete_question($question_id){

        $question = Question::find($question_id);
        $deleted = $question->delete();
        return $deleted;

    }


}

?>