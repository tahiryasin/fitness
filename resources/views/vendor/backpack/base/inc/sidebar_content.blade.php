<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>

<!-- Users, Roles, Permissions -->
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i> Authentication</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('user') }}"><i class="nav-icon la la-user"></i> <span>Users</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('role') }}"><i class="nav-icon la la-id-badge"></i> <span>Roles</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('permission') }}"><i class="nav-icon la la-key"></i> <span>Permissions</span></a></li>
    </ul>
</li>


<li class='nav-item'><a class='nav-link' href='{{ backpack_url('class') }}'><i class='nav-icon la la-question'></i> Classes</a></li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('contact') }}'><i class='nav-icon la la-question'></i> Contacts</a></li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('time-table') }}'><i class='nav-icon la la-question'></i> Time tables</a></li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('issue') }}'><i class='nav-icon la la-question'></i> Issues</a></li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('user-class') }}'><i class='nav-icon la la-question'></i> Bookings</a></li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('class-trainer') }}'><i class='nav-icon la la-question'></i> Class trainers</a></li>