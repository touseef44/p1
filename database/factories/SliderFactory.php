<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Slider>
 */
class SliderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'image' => $this->faker->imageUrl(),
            'offer' => $this->faker->sentence,
            'title' => $this->faker->sentence,
            'sub_title' => $this->faker->sentence,
            'short_desc' => $this->faker->paragraph,
            'botton_link' => $this->faker->url,
            'status' => $this->faker->boolean(),
        ];
    }
}
