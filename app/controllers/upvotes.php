<?php


namespace Controllers;
use Models\upvotes;


class upvote {

    public static function upvote_answer($answer_id, $user_id)
    {
        return Upvote::create(['answer_id' => $answer_id, 'user_id' => $user_id]);
    }
}



