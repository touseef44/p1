<?php

namespace Database\Seeders;

use App\Models\SubscriptionPlan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SubscriptionPlanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        SubscriptionPlan::factory(10)->create();
        SubscriptionPlan::insert([
            'name' => 'Monthly',
            'stripe_price_id' => 'price_1Ok4C2A5J3J2C1ouXuF9YM8s',
            'trial_days' => 5,
            'amount' => 12,
            'type' => 0,
            'enabled' => 1,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        SubscriptionPlan::insert([
            'name' => 'Yearly',
            'stripe_price_id' => 'price_1Ok4E8A5J3J2C1oukONEr4vz',
            'trial_days' => 5,
            'amount' => 100,
            'type' => 1,
            'enabled' => 1,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        SubscriptionPlan::insert([
            'name' => 'Lifetime',
            'stripe_price_id' => 'price_1Ok4JIA5J3J2C1ou1TZ3uZs5',
            'trial_days' => 5,
            'amount' => 2999,
            'type' => 0,
            'enabled' => 1,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
