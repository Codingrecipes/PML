# Generated by: PML v0.7.6 Beta Hamid Alipour blog.code-head.com
# -*- coding: UTF-8 -*-

#cache "a_second * 10"
sys.stdout.write("""<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>""")
sys.stdout.write(pml.get("page_title"))
sys.stdout.write('''</title>
	
   <style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
		}
		 
		html, html body {height: 100%;min-height: 100%;}
	
		body {
			min-width: 600px;
			background-color: #DCDCDC;
			font-family: Tahoma, Verdana;
			font-size: 9pt;
			text-align: center;
		}
		
		#main-wrapper {
			width: 600px;
			margin: 0 auto;
			background-color: #FFFFFF;
			height: 100%;height: auto;min-height: 100%;
		}
		
		#content {
			text-align: left;
			padding: 15px;
		}
		
		#content ul {
			list-style-type: none;
		}
		
		#content ul li {
			padding: 10px;
		}
		
		h1.heading {
			margin-top: 50px;
		}
		
		.v-middle {
			vertical-align: middle;
		}
	</style>

</head>

<body>
<div id="main-wrapper">
	<h1 class="heading">Web Search</h1>
   <form method="get" action="">
   	Enter Keyword: <input type="text" name="q" value="''')
sys.stdout.write(pml.get('q') + " " + "Hello")
sys.stdout.write('''" class="v-middle" size="30" />
      <input type="submit" value="  GO  " class="v-middle" />
   </form>
   <br />
   ''')
if pml.get('show_results'):
    sys.stdout.write("""
   <div id="content">
   	<ul>
         """)
    for res in pml.get('results'):
        sys.stdout.write("""
            <li style="background-color:#""")
        sys.stdout.write(helper.cycle('FFFFFF|EFEFEF'))
        sys.stdout.write(''';">
            	<strong><a href="''')
        sys.stdout.write(res.Url)
        sys.stdout.write('''" target="_blank">''')
        sys.stdout.write(res.Title)
        sys.stdout.write("""</a></strong><br />
               """)
        sys.stdout.write(res.Summary)
        sys.stdout.write("""<br /><br />
            </li>
         """)
    sys.stdout.write("""
      </ul>
   </div>
   """)
sys.stdout.write("""
</div>
</body>
</html>
""")
