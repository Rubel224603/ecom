<?php

use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckOutController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\AdminOrderController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\AdminCustomerController;
use App\Http\Controllers\CourierController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\Mail\MailController;


//Route::get('/',function (){
//    return 'hi';
//});
Route::get('/', [WelcomeController::class,'index'])->name('home.index');
Route::post('/send-email',[MailController::class,'sendEmail'])->name('send.email');
Route::view('/send-email','mail.sendmail');


Route::get('/terms-condition',[WelcomeController::class,'termsCondition'])->name('terms&condition');
Route::get('/return-policy',[WelcomeController::class,'returnPolicy'])->name('returnPolicy');
Route::get('/contact-us',[WelcomeController::class,'contact'])->name('contact-us');

Route::get('/category', [CategoryController ::class, 'index'])->name('home.category');
Route::get('/product-category/{id}', [WelcomeController ::class, 'category'])->name('product.category');
Route::get('/product-detail/{id}',[WelcomeController::class,'product'])->name('product-detail');

Route::get('/cart/index',[CartController::class,'index'])->name('cart-index');

Route::post('/cart/update',[CartController::class,'updateCart'])->name('cart.update');
Route::get('/cart/remove/{rowId}',[CartController::class,'productRemove'])->name('cart.remove');
Route::post('/cart/add/{id}',[CartController::class,'addToCard'])->name('cart-add');
Route::get('/cart-direct/add/{id}',[CartController::class,'directAddToCart'])->name('direct-card-add');
//wishlist;




Route::get('/checkout/index',[CheckOutController::class,'index'])->name('checkout-index');
Route::post('/checkout/new-customer',[CheckOutController::class,'newCustomer'])->name('checkout.new-customer');
Route::post('/checkout/customer-login',[CheckOutController::class,'customerLogin'])->name('checkout.customer-login');
Route::get('/checkout/customer-logout',[CheckOutController::class,'customerLogout'])->name('customer-logout');
Route::get('/checkout/billing-info',[CheckOutController::class,'billingInfo'])->name('checkout.billing-info');

Route::get('/customer-login/register',[CustomerAuthController::class,'index'])->name('customer.login-register');
Route::post('/customer-register',[CustomerAuthController::class,'register'])->name('customer.register');
Route::post('/customer-login',[CustomerAuthController::class,'loginCheck'])->name('customer.login');
Route::get('/customer-wishlist/register-login',[WishlistController::class,'index'])->name('customer.wishlist.login-register');
Route::get('/add-wishlist/{id}',[WishlistController::class,'addWishlist'])->name('add-wishlist');

Route::middleware(['customer'])->group(function () {

    Route::get('/customer-dashboard',[CustomerAuthController::class,'dashboard'])->name('customer.dashboard');

    Route::get('/customer/profile',[CustomerDashboardController::class,'profile'])->name('customer.profile');
    Route::post('/customer/profile-update/{id}',[CustomerDashboardController::class,'updateCustomerProfile'])->name('customer.update');
    Route::get('/customer/order',[CustomerDashboardController::class,'order'])->name('customer.order');
    Route::get('/customer/wishlist',[CustomerDashboardController::class,'wishlist'])->name('customer.wishlist');
    Route::get('/customer/wishlist-delete/{id}',[WishlistController::class,'delete'])->name('wishlist.delete');
    Route::get('/customer/changePassword',[CustomerDashboardController::class,'changePassword'])->name('customer.changePassword');
    Route::post('/customer/password-update/{id}',[CustomerDashboardController::class,'updatePassword'])->name('customer.password-update');
   // Route::get('/add-wishlist/{id}',[WishlistController::class,'addWishlist'])->name('add-wishlist');


});


Route::post('/checkout/new-order',[CheckOutController::class,'newOrder'])->name('checkout.new-order');
Route::get('/checkout/order-completed',[CheckOutController::class,'orderCompleted'])->name('checkout.order-completed');

// SSLCOMMERZ Start
Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END



Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {

   // Route::get('/dashboard',[DashboardController::class,'index']  )->name('dashboard');
    Route::get('/dashboard',[DashboardController::class,'home']  )->name('dashboard');

    Route::get('/category/index',[CategoryController::class,'indexCategory']  )->name('category.index');
    Route::get('/category/create',[CategoryController::class,'create']  )->name('category.create');
    Route::post('/category/store',[CategoryController::class,'store']  )->name('category.store');
    Route::get('/category/edit/{id}',[CategoryController::class,'edit']  )->name('category.edit');
    Route::post('/category/update/{id}',[CategoryController::class,'update']  )->name('category.update');
    Route::get('/category/delete/{id}',[CategoryController::class,'delete']  )->name('category.delete');


    Route::get('/sub-category/index/',[SubCategoryController::class,'index'])->name('sub-category.index');
    Route::get('/sub-category/create',[SubCategoryController::class,'create'])->name('sub-category.create');
    Route::post('/sub-category/store/',[SubCategoryController::class,'store'])->name('sub-category.store');
    Route::get('/sub-category/edit/{id}',[SubCategoryController::class,'edit'])->name('sub-category.edit');
    Route::post('/sub-category/update/{id}',[SubCategoryController::class,'update'])->name('sub-category.update');
    Route::get('/sub-category/delete/{id}',[SubCategoryController::class,'delete'])->name('sub-category.delete');

    Route::get('/brand/index',[BrandController::class,'index'])->name('brand.index');
    Route::get('/brand/create',[BrandController::class,'create'])->name('brand.create');
    Route::post('/brand/store',[BrandController::class,'store'])->name('brand.store');
    Route::get('/brand/edit/{id}',[BrandController::class,'edit'])->name('brand.edit');
    Route::post('/brand/update/{id}',[BrandController::class,'update'])->name('brand.update');
    Route::get('/brand/delete/{id}',[BrandController::class,'delete'])->name('brand.delete');

    Route::get('/unit/index/',[UnitController::class,'index'])->name('unit.index');
    Route::get('/unit/create/',[UnitController::class,'create'])->name('unit.create');
    Route::post('/unit/store/',[UnitController::class,'store'])->name('unit.store');
    Route::get('/unit/edit/{id}',[UnitController::class,'edit'])->name('unit.edit');
    Route::post('/unit/update/{id}',[UnitController::class,'update'])->name('unit.update');
    Route::get('/unit/delete/{id}',[UnitController::class,'delete'])->name('unit.delete');

    Route::get('/product/create/',[ProductController::class,'create'])->name('product.create');
    Route::get('/get-Category-by-sub-category/',[ProductController::class,'getCategoryBySubCategory'])->name('get-Category-by-sub-category');
    Route::post('/product/store/',[ProductController::class,'store'])->name('product.store');
    Route::get('/product/index/',[ProductController::class,'index'])->name('product.index');
    Route::get('/product/detail/{id}',[ProductController::class,'detail'])->name('product.detail');
    Route::get('/product/edit/{id}',[ProductController::class,'edit'])->name('product.edit');
    Route::post('/product/update/{id}',[ProductController::class,'update'])->name('product.update');

    Route::get('/product/delete/{id}',[ProductController::class,'delete'])->name('product.delete');
    Route::get('admin/order/all-order',[AdminOrderController::class,'index'])->name('admin.all-order');
    Route::get('admin/order-detail/{id}',[AdminOrderController::class,'detail'])->name('admin.order-detail');
    Route::get('admin/order-edit/{id}',[AdminOrderController::class,'edit'])->name('admin.order-edit');
    Route::post('admin/order-update/{id}',[AdminOrderController::class,'update'])->name('admin.order.update');
    Route::get('admin/order-print/{id}',[AdminOrderController::class,'invoicePrint'])->name('admin.order.invoice-print');
    Route::get('admin/order-invoice/{id}',[AdminOrderController::class,'invoice'])->name('admin.order-invoice');
    Route::get('admin/order-delete/{id}',[AdminOrderController::class,'delete'])->name('admin.order-delete');

    //Coupon

    Route::get('admin/coupon-create',[CouponController::class,'create'])->name('admin.coupon.create');
    Route::post('admin/coupon-store',[CouponController::class,'store'])->name('admin.coupon.store');
    Route::get('admin/coupon-index',[CouponController::class,'index'])->name('admin.coupon.index');
    Route::get('admin/coupon-edit/{id}',[CouponController::class,'edit'])->name('admin.coupon.edit');
    Route::post('admin/coupon-update/{id}',[CouponController::class,'update'])->name('admin.coupon.update');
    Route::get('admin/coupon-delete/{id}',[CouponController::class,'delete'])->name('admin.coupon.delete');

    Route::get('/admin/create-customer/',[AdminCustomerController::class,'store'])->name('admin.create.customer');
    Route::get('/admin/manage-customer/',[AdminCustomerController::class,'index'])->name('admin.customer.manage');

    Route::resource('courier', CourierController::class);
    Route::resource('user', UserController::class);
});
