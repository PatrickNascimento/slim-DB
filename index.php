<?php
require 'start.php';


use Controllers\Users;
use Controllers\Question;
use Controllers\Answers;


// Import user controller
$user = Users::create_user("patrick", "patrick@example.com","patrick_pass");

//$question = Questions::create_question('Você realmente é um programador?', 1);
//$answers = Answers::add_answer("Esta é uma pergunta",1,2);
//$upvote = Answers::upvote_answer(1,14);
//$all = Questions::get_questions_with_answers();
//$all_with_users = Questions::get_questions_with_users();
//$one_questions = Questions::get_question_answers_upvotes(1);
//$user_question_count = Users::question_count(1);
//$update_answer = Answers::update_answer(1, "This is an updated answer");
//$delete = Questions::delete_question(1);

?>