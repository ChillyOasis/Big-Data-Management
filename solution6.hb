get 'task6', 'student|007'

get 'task6', 'submission|007|312|assignment|1'

scan 'task6', {COLUMNS=>['STUDENT:fname', 'STUDENT:lname']}

alter 'task6', {NAME=>'STUDENT', VERSIONS=>2}
put 'task6', 'student|007', 'STUDENT:degree', 'SIM'
scan 'task6', {COLUMNS=>'STUDENT', ROWPREFIXFILTER=>'student', FILTER=>"SingleColumnValueFilter('STUDENT', 'lname',=,'binary:Bond')", VERSIONS=>2}

alter 'task6', 'delete'=>'FILES'

get 'task6', 'submission|007|312|assignment|1'
get 'task6', 'submission|007|312|assignment|2'
get 'task6', 'submission|007|313|project|1'
get 'task6', 'submission|666|312|assignment|1'
get 'task6', 'submission|666|312|assignment|2'
get 'task6', 'submission|666|313|project|1'

alter 'task6', {NAME=>'SUBJECT', VERSION=>2}

disable 'task6'
drop 'task6'
