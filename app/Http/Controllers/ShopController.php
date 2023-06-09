<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
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
        $orderId = session('orderId');
        if(!is_null($orderId)) {
            $order = Order::find($orderId);
        } else {
            $order = false;
        }
        return view('templateCartPage', compact('order'));
    }

    public function postAddToCart($productId) {
       $orderId = session('orderId');
       if(is_null($orderId)) {
           $orderId = Order::create()->id;
            session(['orderId' => $orderId]);
       }
       $order = Order::find($orderId);

        if($order->products->contains($productId)) {
            $pivotRow = $order->products()->where('product_id', $productId)->first()->pivot;
            $pivotRow->count++;
            $pivotRow->update();
        } else {
            $order->products()->attach($productId);
        }

       //return view('templateCartPage', compact('order'));
        return redirect()->route('cart');
    }

    public function postRemoveFromCart($productId) {
        $orderId = session('orderId');
        if(is_null($orderId)) {
            return false;
        }
        $order = Order::find($orderId);

        if($order->products->contains($productId)) {
            $pivotRow = $order->products()->where('product_id', $productId)->first()->pivot;
            if($pivotRow->count === 1) {
                $order->products()->detach($productId);
            } else {
                $pivotRow->count--;
                $pivotRow->update();
            }
        }

        //return view('templateCartPage', compact('order'));
        return redirect()->route('cart');
    }
}
