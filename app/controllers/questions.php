<?php

namespace Controllers;
use Models\Question;

class Questions{

    public static function get_questions_with_answers()
    {
        return Question::with('answers')->get()->toArray();
    }

    public static function create_question($question, $user_id)    {
        return Question::create(['question' => $question, 'user_id' => $user_id]);
    }

    public static function get_questions_with_users(){
        return Question::with('user')->get()->toArray();
    }

    public static function get_question_answers_upvotes($question_id){
        return Question::find($question_id)->answers()->with('upvotes')->get()->toArray();
    }

    public static function question_count($user_id){
        return Question::where('user_id',$user_id)->count();
    }

    public static function delete_question($question_id){
        $question = Question::find($question_id);
        return $question->delete();
    }
}
