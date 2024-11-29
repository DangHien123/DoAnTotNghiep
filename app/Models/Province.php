<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    use HasFactory;
    protected $table   = 'db_province';
    protected $guarded = ['*'];
    public function district()
	{
		return $this->hasMany(District::class,'provinceid','id');
	}

    public function Transaction()
    {
        return $this->hasMany(Transaction::class,'tst_province_id','id');
    }
}
