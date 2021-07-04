<nav class="hk-nav hk-nav-dark">
            <a href="javascript:void(0);" id="hk_nav_close" class="hk-nav-close"><span class="feather-icon"><i data-feather="x"></i></span></a>
            <div class="nicescroll-bar">
                <div class="navbar-nav-wrap">
                    <ul class="navbar-nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ URL::to('/') }}" >
                                <span class="feather-icon"><i data-feather="activity"></i></span>
                                <span class="nav-link-text">Dashboard</span>
                            </a>
                        </li>
                        @if(Auth::user()->role_id == '1' || Auth::user()->role_id == '2')
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#rfq">
                                <span class="feather-icon"><i data-feather="info"></i></span>
                                <span class="nav-link-text">RFQ</span>
                            </a>
                            <ul id="rfq" class="nav flex-column collapse collapse-level-1">
                                <li class="nav-item">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)">Cust. Rate Request</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)">Agent Response</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->role_id == '1' || Auth::user()->role_id == '2')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ URL::to('/users') }}" >
                                <i class="fa fa-money"></i>
                                <span class="nav-link-text">Quotation</span>
                            </a>
                        </li>
                        @endif
                        @if(Auth::user()->role_id == '1' || Auth::user()->role_id == '2')
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#rom">
                                <span class="feather-icon"><i data-feather="package"></i></span>
                                <span class="nav-link-text">ROM</span>
                            </a>
                            <ul id="rom" class="nav flex-column collapse collapse-level-1">
                                <li class="nav-item">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)">Booking Confirm</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        @endif
                    </ul>
                    <hr class="nav-separator">
                    <div class="nav-header">
                        <span>Settings</span>
                        <span>UI</span>
                    </div>
                    <ul class="navbar-nav flex-column">
                        @if(Auth::user()->role_id == '1' || Auth::user()->role_id == '2')
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#Components_drp">
                                <i class="fa fa-database"></i>
                                <span class="nav-link-text">Coding Forms</span>
                            </a>
                            <ul id="Components_drp" class="nav flex-column collapse collapse-level-1">
                                <li class="nav-item">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/database/terminal') }}">Terminal / Warehouse</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/database/importer') }}">Client / Importer</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/database/foreignAgent') }}">Foreign Agent</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/database/saleperson') }}">Sales Person</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/database/city') }}">City / Port</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/database/country') }}">Country</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->role_id == '1')
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#settings">
                                <i class="fa fa-gear"></i>
                                <span class="nav-link-text">Settings</span>
                            </a>
                            <ul id="settings" class="nav flex-column collapse collapse-level-1">
                                <li class="nav-item">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ URL::to('/settings/companies')}}">Companies</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ URL::to('/users') }}" >
                                <i class="icon-people"></i>
                                <span class="nav-link-text">Users</span>
                            </a>
                        </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
        <div id="hk_nav_backdrop" class="hk-nav-backdrop"></div>