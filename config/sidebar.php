<?php
return [
    [
        'name' => 'Sản phẩm',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fas fa-shopping-bag',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Thuộc tính',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Nhóm sản phẩm',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
//            [
//                'name'  => 'Từ khoá',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//            ],
            [
                'name'  => 'Sản phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Đánh giá',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Bình luận',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Mã giảm giá',
                'namespace' => 'discount-code',
                'route' => 'admin.discount.code.index',
                'icon'  => 'far fa-circle',
                'level'  => [1,2],
            ],
        ]
    ],
    [
        'name' => 'Tin tức',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-newspaper',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Menu',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Bài viết',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
        ]
    ],


	[
		'name' => 'Đối tác',
		'list-check' => ['ncc'],
		'icon' => 'fas fa-truck',
		'level'  => [1,2],
        'route' => 'admin.ncc.index',
        'namespace' => 'ncc',
	],
    [
    'name'  => 'Liên hệ',
    'list-check' => ['contact'],
    'namespace' => 'contact',
    'route' => 'admin.contact',
    'icon'  => 'far fa-address-card',
    'level'  => [1,2],
    ],

   [
       'name' => 'Khách hàng',
       'list-check' => ['user'],
       'icon' => 'fas fa-users',
       'level'  => [1,2],
       'namespace' => 'user',
       'route' => 'admin.user.index',
   ],
    [
        'name' => 'Đơn hàng',
        'list-check' => ['transaction'],
        'icon' => 'fas fa-money-check-alt',
		'level'  => [1],
        'namespace' => 'transaction',
        'route' => 'admin.transaction.index',
    ],
	[
        'name' => 'Kho',
        'list-check' => ['inventory','import','export'],
        'icon' => 'fas fa-warehouse',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Nhập kho',
                'namespace' => 'import',
                'route' => 'admin.inventory.warehousing',
                'icon'  => 'far fa-circle',
				'level'  => [1,2],
            ],
			[
				'name'  => 'Xuất kho',
				'namespace' => 'export',
				'route' => 'admin.export.out_of_stock',
				'icon'  => 'far fa-circle',
				'level'  => [1,2],
			],
        ]
    ],
//    [
//        'name' => 'SystemPay',
//        'list-check' => ['pay-in'],
//        'icon' => 'fa  fa-usd',
//        'sub'  => [
//            [
//                'name'  => 'Nạp tiền',
//                'route' => 'admin.system_pay_in.index',
//                'namespace' => 'pay-in',
//                'icon'  => 'fa fa-money'
//            ]
//        ]
//    ],

	[
		'name' => 'Hệ thống',
		'list-check' => ['slide','account_admin','event','page-static','statistical'],
		'icon' => 'fas fa-cogs',
		'level'  => [1],
		'sub'  => [
			[
				'name'  => 'Tài khoản',
				'route' => 'admin.account_admin.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'far fa-circle'
			],
			[
				'name'  => 'Slide',
				'route' => 'admin.slide.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'far fa-circle'
			],
			[
				'name'  => 'Sự kiện',
				'route' => 'admin.event.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'far fa-circle'
			],
            [
				'name'  => 'Trang Tĩnh',
				'route' => 'admin.static.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'far fa-circle'
			],
			[
				'name'  => 'Thống kê',
				'route' => 'admin.statistical',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'far fa-circle'
			],
		]
	],
];
