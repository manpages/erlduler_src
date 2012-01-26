-module(sch_main).

%-export([
%	work/2
%]).

-compile(export_all).

work (Params, Arg) -> 
	show("Hello, world of https").

show(Content) ->
    [   
        {header, {content_type, "text/html; charset=utf-8"}},
        {html, hehe:run("sch/html/outer.hehe", [
            {content, Content}
        ])} 
		%{html, Content}
    ].  

show(Content, 'empty') ->
    [   
        {header, {content_type, "text/html; charset=utf-8"}},
        {html, hehe:run("sch/html/outer_empty.hehe", [
            {content, Content}
        ])} 
		%{html, Content}
    ]. 
