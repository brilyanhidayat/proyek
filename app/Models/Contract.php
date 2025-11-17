<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Plant;
use App\Models\Kontraktor;

class Contract extends Model
{
    //

    // add fillable
    protected $fillable = [
        'nomor',
        'judul',
        'nomor_agreement',
        'start',
        'end',
        'nomor_sr',
        'plant',
        'kontraktor',
        'ammount',
        'worker',
        'remark',
        'file'
        ];
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];

    

// Plant Model
    public function plant()
    {
        return $this->belongsTo(Plant::class);
    }

// kontraktor Model
    public function kontraktor()
    {
        return $this->belongsTo(Kontraktor::class);
    }
}