<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Contracts;

class Plant extends Model
{
    //

    // add fillable
    protected $fillable = [
        'name',
        'description',
    ];
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
// Role Model
    public function contract()
    {
        return $this->belongsToMany(Contract::class);
    }
}

