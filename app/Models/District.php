<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    use HasFactory;
    protected $table   = 'db_district';
    protected $guarded = ['*'];
    public function province()
	{
		return $this->belongsTo(Province::class,'provinceid','id');
	}
     public function Transaction()
    {
        return $this->hasMany(Transaction::class,'tst_district_id','id');
    }
}
