<?php
namespace Models;

use \Illuminate\Database\Eloquent\Model;

class Upvote extends Model {

    protected $table = 'upvotes';
    protected $fillable = ['answer_id','user_id'];

    public function upvotes()
    {
        return $this->hasMany('\Models\Upvote');
    }

}
?>