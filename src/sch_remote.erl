-module(sch_remote).

-compile(export_all).

new_processor(Node) ->
	io:format("<<DEBUG>> New node registered: ~p~n", Node),
	fission_list:push(processors, Node)
.
