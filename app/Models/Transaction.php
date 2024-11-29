<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;
use App\Models\Order;
use App\Models\Province;
use App\Models\District;

class Transaction extends Model
{
    protected $guarded = [''];

    const TYPE_TRANSFER = 1;
    const TYPE_ONLINE   = 2;

    const STATUS_DEFAULT = 1;
    const STATUS_PROCESS = 2;
    const STATUS_SUCCESS = 3;
    const STATUS_CANCEL = -1;

    protected $status = [
        '1' => [
            'class' => 'primary',
            'name'  => 'Tiếp nhận'
        ],
        '2' => [
            'class' => 'info',
            'name'  => 'Đang vận chuyển'
        ],
        '3' => [
            'class' => 'success',
            'name'  => 'Hoàn thành'
        ],
        '-1' => [
            'class' => 'danger',
            'name'  => 'Đã Huỷ'
        ],
    ];

    public function getStatus()
    {
        return Arr::get($this->status, $this->tst_status, "[N\A]");
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'tst_user_id', 'id');
    }

    public function admin()
    {
        return $this->belongsTo(Admin::class, 'tst_admin_id', 'id');
    }
    public function orders()
    {
        return $this->hasMany(Order::class, 'od_transaction_id');
    }

    public function province()
	{
		return $this->belongsTo(Province::class,'tst_province_id');
	}
	public function district()
	{
		return $this->belongsTo(District::class,'tst_district_id');
	}
    public function payment()
    {
        return $this->belongsTo(Payment::class, 'id', 'p_transaction_id');
    }
}
