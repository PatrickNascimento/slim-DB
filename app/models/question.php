<?php

namespace Models;

use \Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Question extends Model {
    use SoftDeletes;
    protected $fillable = ['questions', 'user_id'];
    protected $table = 'questions';
    protected $dates = ['deleted_at'];

    public function answers()
    {
        return $this->hasMany('\Models\Answer');
    }


    public function user()
    {
        return $this->belongsTo(‘\Models\User’);
    }
}



?>