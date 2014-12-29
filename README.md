the-hibiki-language
===================

the hibiki language.
yes, the name is from the [kantai collection girl](http://www.pixiv.net/member_illust.php?mode=medium&illust_id=47509723)...

nobody draws better than azure when it comes to hibiki...

# intro

* `[2014.12.30]` just testing out bison and flex features for the current moment so there's not really any language design yet...

# compiling

`[2014.12.30]` do ***EXACTLY*** this:
```Shell
bison -d hibiki.y
flex hibiki.l
cc -o hibiki hibiki.tab.c lex.yy.c -lfl
./hibiki
```
