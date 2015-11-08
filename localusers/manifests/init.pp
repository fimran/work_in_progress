class localusers {
	user { 'admin':
		ensure	=>	present,
		shell	=>	'/bin/bash',
		uid	=>	2002,
		home	=>	'/home/admin',
                groups  =>      ['wheel', 'finance', 'aahil', 'sudo'],
		gid	=>	'wheel',
		managehome	=> 	true,
		password	=> '$6$CJz1zkSw$phl4IbTL9jcuic/uDu/KSt3ZTMngRV72ay6/W2BMEeSliBk745fLYi4nDacluJEVaNPQlwEk3Vweqlbm6JyNo1',	
	}
	user { 'jeff':
		ensure	=>	present,
		shell	=>	'/bin/bash',
		home	=>	'/home/jeff',
		uid	=>	2001,
		groups	=>	['wheel', 'finance', 'aahil', 'sudo'],
		managehome	=>	true,
		gid	=>	'wheel',
                password        => '$6$CJz1zkSw$phl4IbTL9jcuic/uDu/KSt3ZTMngRV72ay6/W2BMEeSliBk745fLYi4nDacluJEVaNPQlwEk3Vweqlbm6JyNo1',
	}
        user { 'fimran':
                ensure  =>      present,
		uid	=>	2000,
                shell   =>      '/bin/bash',
                home    =>      '/home/fimran',
                groups  =>      ['wheel', 'finance', 'aahil', 'sudo'],
                managehome      =>      true,
		gid		=>	'wheel',	
                password        => '$6$CJz1zkSw$phl4IbTL9jcuic/uDu/KSt3ZTMngRV72ay6/W2BMEeSliBk745fLYi4nDacluJEVaNPQlwEk3Vweqlbm6JyNo1',
        }
	include localusers::groups::aahil
	include localusers::groups::finance
	include	localusers::groups::wheel
}
