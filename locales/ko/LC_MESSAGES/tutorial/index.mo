Þ          |      Ü          ¹   !  	   Û     å  ì        í  ú   y     t    }     ÿ          0  O  I  Æ        `	     h	  i  	  ¢   î  I       Û  þ  è     ç           #     	      
                                                :gh:`The tutorial project is available as an example in the Flask repository <examples/tutorial>`, if you want to compare your project with the final product as you follow the tutorial. Contents: Continue to :doc:`layout`. Flask is flexible. It doesn't require you to use any particular project or code layout. However, when first starting, it's helpful to use a more structured approach. This means that the tutorial will require a bit of boilerplate up front, but it's done to avoid many common pitfalls that new developers encounter, and it creates a project that's easy to expand on. Once you become more comfortable with Flask, you can step out of this structure and take full advantage of Flask's flexibility. It's assumed that you're already familiar with Python. The `official tutorial`_ in the Python docs is a great way to learn or review first. This tutorial will walk you through creating a basic blog application called Flaskr. Users will be able to register, log in, create posts, and edit or delete their own posts. You will be able to package and install the application on other computers. Tutorial While it's designed to give a good starting point, the tutorial doesn't cover all of Flask's features. Check out the :doc:`/quickstart` for an overview of what Flask can do, then dive into the docs to find out more. The tutorial only uses what's provided by Flask and Python. In another project, you might decide to use :doc:`/extensions` or other libraries to make some tasks simpler. screenshot of edit page screenshot of index page screenshot of login page Project-Id-Version: Flask 3.0.x
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-06-20 23:55+0900
Last-Translator: 
Language-Team: ko <LL@li.org>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
Generated-By: Babel 2.14.0
X-Generator: Poedit 3.4.4
 íí ë¦¬ì¼ì ë°ë¼íë©´ì ìµì¢ ê²°ê³¼ë¬¼ê³¼ íë¡ì í¸ë¥¼ ë¹êµíê³  ì¶ë¤ë©´ íí ë¦¬ì¼ íë¡ì í¸ë Flask ì ì¥ì <exples/tutorial>`ìì ìì ë¡ ì¬ì©í  ì ììµëë¤. ëª©ì°¨: :doc:`layout`ìì ê³ì. íë¼ì¤í¬ë ì ì°í©ëë¤. í¹ì  íë¡ì í¸ë ì½ë ë ì´ììì ì¬ì©í  íìê° ììµëë¤. íì§ë§ ì²ì ììí  ëë ì¡°ê¸ ë êµ¬ì¡°íë ì ê·¼ ë°©ìì ì¬ì©íë ê²ì´ ëìì´ ë©ëë¤. ì´ë íí ë¦¬ì¼ì´ ì¬ì ì ìì ë³´ì¼ë¬íë ì´í¸ ì½ëê° íìíì§ë§ ì´ë³´ ê°ë°ìê° íí ê²ªì ì ìë ë§ì í¨ì ì í¼íê³ , íì¥íê¸° ì¬ì´ íë¡ì í¸ë¥¼ ë§ë¤ ì ìë¤ë ë»ìëë¤. íë¼ì¤í¬ì í ë² ìµìí´ì§ë©´, ì´ êµ¬ì¡°ìì í ë°ìêµ­ ë ëìê° ì ì°í íë¼ì¤í¬ì ì¥ì ì ëª¨ë íì©í  ì ììµëë¤. ì´ë¯¸ Pythonì ìµìíë¤ê³  ê°ì í©ëë¤. Python ë¬¸ìì 'ê³µì íí ë¦¬ì¼'ì íµí´ ë¨¼ì  ë°°ì°ê±°ë ë³µìµíë ê²ë ì¢ì ë°©ë²ìëë¤. ì´ íí ë¦¬ì¼ììë Flaskrì´ë¼ë ê¸°ë³¸ ë¸ë¡ê·¸ ì íë¦¬ì¼ì´ìì ë§ëë ë°©ë²ì ìë´í©ëë¤. ì¬ì©ìë ë±ë¡íê³ , ë¡ê·¸ì¸íê³ , ê¸ì ìì±íê³ , ìì ì ê¸ì í¸ì§íê±°ë ì­ì í  ì ììµëë¤. ì íë¦¬ì¼ì´ìì í¨í¤ì§íì¬ ë¤ë¥¸ ì»´í¨í°ì ì¤ì¹í  ì ììµëë¤. íí ë¦¬ì¼ ì´ íí ë¦¬ì¼ì ì¢ì ììì ì ì ê³µíê¸° ìí´ ë§ë¤ì´ì¡ì§ë§, Flaskì ëª¨ë  ê¸°ë¥ì ë¤ë£¨ì§ë ììµëë¤.:doc:`/quickstart`ìì Flaskì ê¸°ë¥ì ëí ê°ìë¥¼ ì´í´ë³´ê³  ìì¸í ë´ì©ì ììë³´ë ¤ë©´ ë¬¸ìë¥¼ ìì¸í ì´í´ë³´ì¸ì. ì´ íí ë¦¬ì¼ì Flaskì Pythonìì ì ê³µíë ê²ë§ ì¬ì©í©ëë¤. ë¤ë¥¸ íë¡ì í¸ììë :doc:`/extensions` ëë ë¤ë¥¸ ë¼ì´ë¸ë¬ë¦¬ë¥¼ ì¬ì©íì¬ ì¼ë¶ ììì ë ê°ë¨íê² ë§ë¤ ì ììµëë¤. í¸ì§ íì´ì§ ì¤í¬ë¦°ì· ìì¸ íì´ì§ ì¤í¬ë¦°ì· ë¡ê·¸ì¸ íì´ì§ ì¤í¬ë¦°ì· 