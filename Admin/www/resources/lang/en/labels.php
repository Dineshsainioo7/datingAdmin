<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Labels Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used in labels throughout the system.
    | Regardless where it is placed, a label can be listed here so it is easily
    | found in a intuitive way.
    |
    */

    'general' => [
        'all' => 'All',
        'yes' => 'Yes',
        'no' => 'No',
        'copyright' => 'Copyright',
        'custom' => 'Custom',
        'actions' => 'Actions',
        'active' => 'Active',
        'buttons' => [
            'save' => 'Save',
            'update' => 'Update',
        ],
        'hide' => 'Hide',
        'inactive' => 'Inactive',
        'none' => 'None',
        'show' => 'Show',
        'toggle_navigation' => 'Toggle Navigation',
        'create_new' => 'Create New',
        'toolbar_btn_groups' => 'Toolbar with button groups',
        'more' => 'More',
    ],

    'backend' => [
        'access' => [
            'roles' => [
                'create' => 'Create Role',
                'edit' => 'Edit Role',
                'management' => 'Role Management',

                'table' => [
                    'number_of_users' => 'Number of Users',
                    'permissions' => 'Permissions',
                    'role' => 'Role',
                    'sort' => 'Sort',
                    'total' => 'role total|roles total',
                ],
            ],

            'users' => [
                'active' => 'Active Users',
                'all_permissions' => 'All Permissions',
                'change_password' => 'Change Password',
                'change_password_for' => 'Change Password for :user',
                'create' => 'Create User',
                'deactivated' => 'Deactivated Users',
                'deleted' => 'Deleted Users',
                'edit' => 'Edit User',
                'management' => 'User Management',
                'no_permissions' => 'No Permissions',
                'no_roles' => 'No Roles to set.',
                'permissions' => 'Permissions',
                'user_actions' => 'User Actions',

                'table' => [
                    'confirmed' => 'Confirmed',
                    'created' => 'Created',
                    'email' => 'E-mail',
                    'id' => 'ID',
                    'last_updated' => 'Last Updated',
                    'name' => 'Name',
                    'first_name' => 'First Name',
                    'last_name' => 'Last Name',
                    'no_deactivated' => 'No Deactivated Users',
                    'no_deleted' => 'No Deleted Users',
                    'other_permissions' => 'Other Permissions',
                    'permissions' => 'Permissions',
                    'abilities' => 'Abilities',
                    'roles' => 'Roles',
                    'mobile-number' => 'Mobile Number',
                    'country' => 'Country',
                    'city' => 'City',
                    'social' => 'Social',
                    'total' => 'user total|users total',
                ],

                'tabs' => [
                    'titles' => [
                        'overview' => 'Overview',
                        'history' => 'History',
                    ],

                    'content' => [
                        'overview' => [
                            'avatar' => 'Avatar',
                            'confirmed' => 'Confirmed',
                            'created_at' => 'Created At',
                            'deleted_at' => 'Deleted At',
                            'email' => 'E-mail',
                            'last_login_at' => 'Last Login At',
                            'last_login_ip' => 'Last Login IP',
                            'last_updated' => 'Last Updated',
                            'name' => 'Name',
                            'first_name' => 'First Name',
                            'last_name' => 'Last Name',
                            'status' => 'Status',
                            'timezone' => 'Timezone',
                        ],
                    ],
                ],

                'view' => 'View User',
            ],
        ],
        'sidebar' => [
            'activity' => 'Activity',
            'interest' => 'Interest Management',
            'Static-page' => 'Static Page Management',
            'plan'=> 'Plan',
            'plan-feature'=> 'Plan Feature Management',
            'plan-month'=> 'Plan Month Management',
            'plan-management'=> 'Plan Management',
            'privileges'=> 'Privilege Management',
            
        ],
        'interest' => [
            'management' => 'Interest Management',
            'active' => 'Active Interest',
            'create' => 'Create Interest',
            'edit' => 'Edit Interest',
            'table' => [
                'name' => 'Name',
                'status' => 'Status',
                'created_at' => 'Created At',
            ],
        ],

        'pages' => [
            'management' => 'Static Page Management',
            'active' => 'Active Static Page',
            'create' => 'Create Static Page',
            'edit' => 'Edit Static Page',
            'table' => [
                'name' => 'Name',
                'descrption' => 'Descrption',
                'status' => 'Status',
                'created_at' => 'Created At',
            ],
        ],
        'plans' => [
            'management' => 'Plan Management',
            'active' => 'Active Plan',
            'create' => 'Create Plan',
            'edit' => 'Edit Plan',
            'table' => [
                'name' => 'Name',
                'descrption' => 'Descrption',
                'plan_type' => 'Plan Type',
                'price' => 'Price',
                'status' => 'Status',
                'created_at' => 'Created At',
            ],
        ],
        'plan_feature' => [
            'management' => 'Plan Feature Management',
            'active' => 'Active Feature Plan',
            'create' => 'Create Feature Plan',
            'edit' => 'Edit Feature Plan',
            'table' => [
                'name' => 'Name',
                'plan_name' => 'Plan Name',
                'plan_type' => 'Plan Type',
                'occurence' => 'Occurence',
                'status' => 'Status',
                'created_at' => 'Created At',
            ],
        ],
        'plan_month' => [
            'management' => 'Plan Month Management',
            'active' => 'Active Month Plan',
            'create' => 'Create Month Plan',
            'edit' => 'Edit Month Plan',
            'table' => [
                'time' => 'Time',
                'plan_name' => 'Plan Name',
                'plan_type' => 'Plan Type',
                'discount' => 'Discount',
                'status' => 'Status',
                'created_at' => 'Created At',
            ],
        ],
        'plan_privilege' => [
            'management' => 'Privilege Management',
            'active' => 'Active privilege',
            'create' => 'Create privilege',
            'edit' => 'Edit privilege',
            'table' => [
                'name' => 'Name',
                'controllers' => 'Controller',
                'plan_type' => 'Plan Type',
                'actions' => 'Methods',
                'status' => 'Status',
                'created_at' => 'Created At',
            ],
        ],
    ],

    'frontend' => [
        'auth' => [
            'login_box_title' => 'Login',
            'login_button' => 'Login',
            'login_with' => 'Login with :social_media',
            'register_box_title' => 'Register',
            'register_button' => 'Register',
            'remember_me' => 'Remember Me',
        ],

        'contact' => [
            'box_title' => 'Contact Us',
            'button' => 'Send Information',
        ],

        'passwords' => [
            'expired_password_box_title' => 'Your password has expired.',
            'forgot_password' => 'Forgot Your Password?',
            'reset_password_box_title' => 'Reset Password',
            'reset_password_button' => 'Reset Password',
            'update_password_button' => 'Update Password',
            'send_password_reset_link_button' => 'Send Password Reset Link',
        ],

        'user' => [
            'passwords' => [
                'change' => 'Change Password',
            ],

            'profile' => [
                'avatar' => 'Avatar',
                'created_at' => 'Created At',
                'edit_information' => 'Edit Information',
                'email' => 'E-mail',
                'last_updated' => 'Last Updated',
                'name' => 'Name',
                'first_name' => 'First Name',
                'last_name' => 'Last Name',
                'update_information' => 'Update Information',
            ],
        ],
    ],
];
