<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubscriptionDetail extends Model
{
    use HasFactory;

    protected $fillable= [
        // 'name', 'stripe_price_id', 'trial_days', 'amount', 'type', 'enabled', 'created_at', 'updated_at'
    ];
}
