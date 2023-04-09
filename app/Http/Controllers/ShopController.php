<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function getHomePageView() {
        return view('templateHomepage');
    }
    public function getCategoriesPageView() {
        $categories = Category::get();
        // compact('categories') => ['categories' => $categories]
        return view('templateCategoriesPage', compact('categories'));
    }
    public function getCategoryPageView($slug) {
        $categoryObject = Category::where('code', $slug)->first();
        $products = Product::where('category_id', $categoryObject->id)->get();
        return view('templateCategoryPage', ['category' => $categoryObject, 'products' => $products]);
    }
    public function getSingleProductView($category_slug, $product_slug) {
        $category = Category::where('code', $category_slug)->first();
        $product = Product::where('code', $product_slug)->first();
        return view('templateSingleProductPage', ['category' => $category, 'product' => $product]);
    }
    public function getCartView() {
        return view('templateCartPage');
    }
}
