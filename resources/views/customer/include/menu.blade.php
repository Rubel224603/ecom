
<div class="card card-body">
    <div class="list-group">

        <a href="{{route('customer.dashboard')}}" class="list-group-item list-group-item-action {{\Request::route()->getName()=='customer.dashboard' ? 'active':''}}" >My Dashboard</a>
        <a href="{{route('customer.profile')}}" class="list-group-item list-group-item-action {{\Request::route()->getName()=='customer.profile' ? 'active':''}}">Manage Profile</a>
        <a href="{{route('customer.order')}}" class="list-group-item list-group-item-action {{\Request::route()->getName()=='customer.order' ? 'active':''}}">My Order</a>
        <a href="{{route('customer.wishlist')}}" class="list-group-item list-group-item-action {{\Request::route()->getName()=='customer.wishlist' ? 'active':''}}">My Wishlist</a>
        <a href="{{route('customer.changePassword')}}" class="list-group-item list-group-item-action {{\Request::route()->getName()=='customer.changePassword' ? 'active':''}}" >Change Password</a>
        <a href="{{route('customer-logout')}}" class="list-group-item list-group-item-action " >Logout</a>

    </div>
</div>
