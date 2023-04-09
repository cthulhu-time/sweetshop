<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    public function getCategory() {
        $category = Category::where('id', $this->category_id)->first();
        return $category;
    }
}
