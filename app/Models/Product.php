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

    public function getPriceForCount() {
        if(!is_null($this->pivot)) {
            return $this->pivot->count * $this->price;
        } else {
            return 0;
        }
    }
}
