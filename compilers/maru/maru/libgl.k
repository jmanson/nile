(require "osdefs.k")
(require "dlopen.k")

(define-constant GL_QUADS               	0x0007)
(define-constant GL_TRIANGLE_STRIP             	0x0005)
(define-constant GL_POLYGON               	0x0009)
(define-constant GL_MODELVIEW			0x1700)
(define-constant GL_PROJECTION			0x1701)
(define-constant GL_DEPTH_BUFFER_BIT    	0x0100)
(define-constant GL_VIEWPORT_BIT	    	0x0800)
(define-constant GL_ENABLE_BIT			0x2000)
(define-constant GL_COLOR_BUFFER_BIT		0x4000)
(define-constant GL_TEXTURE_2D			0x0DE1)
(define-constant GL_TEXTURE_MAG_FILTER  	0x2800)
(define-constant GL_TEXTURE_MIN_FILTER  	0x2801)
(define-constant GL_NEAREST             	0x2600)
(define-constant GL_LINEAR              	0x2601)
(define-constant GL_DEPTH_COMPONENT     	0x1902)
(define-constant GL_ALPHA               	0x1906)
(define-constant GL_ALPHA8              	0x803C)
(define-constant GL_UNSIGNED_BYTE       	0x1401)
(define-constant GL_UNSIGNED_INT	       	0x1405)
(define-constant GL_BLEND			0x0BE2)
(define-constant GL_SRC_ALPHA			0x0302)
(define-constant GL_ONE_MINUS_SRC_ALPHA		0x0303)
(define-constant GL_DEPTH_TEST			0x0B71)
(define-constant GL_LESS			0x0201)
(define-constant GL_FLAT			0x1D00)
(define-constant GL_SMOOTH			0x1D01)
(define-constant GL_FRAMEBUFFER_EXT		0x8D40)
(define-constant GL_RENDERBUFFER_EXT		0x8D41)
(define-constant GL_DEPTH_ATTACHMENT_EXT	0x8D00)
(define-constant GL_RGBA			0x1908)
(define-constant GL_BGRA			0x80E1)
(define-constant GL_ABGR_EXT			0x8000)
(define-constant GL_UNSIGNED_INT_8_8_8_8       	0x8035)
(define-constant GL_RGBA8			0x8058)
(define-constant GL_TEXTURE_WRAP_S		0x2802)
(define-constant GL_TEXTURE_WRAP_T		0x2803)
(define-constant GL_CLAMP_TO_EDGE		0x812F)
(define-constant GL_COLOR_ATTACHMENT0_EXT	0x8CE0)
(define-constant GL_FRAMEBUFFER_COMPLETE_EXT	0x8CD5)
(define-constant GL_STREAM_DRAW_ARB		0x88E0)
(define-constant GL_STATIC_DRAW_ARB		0x88E4)
(define-constant GL_DYNAMIC_DRAW_ARB		0x88E8)
(define-constant GL_PIXEL_UNPACK_BUFFER_ARB	0x88EC)
(define-constant GL_WRITE_ONLY_ARB		0x88B9)

(define-function init-libgl ()
  (init-dlopen)
  (let ((lib "libGL"))
    (define glClearColor			(dlextern lib "glClearColor"			"ffff"))
    (define glClearDepth			(dlextern lib "glClearDepth"			"d"))
    (define glViewport				(dlextern lib "glViewport"			"iiii"))
    (define glMatrixMode			(dlextern lib "glMatrixMode"			"i"))
    (define glLoadIdentity			(dlextern lib "glLoadIdentity"			""))
    (define glOrtho				(dlextern lib "glOrtho"				"dddddd"))
    (define glClear				(dlextern lib "glClear"				"i"))
    (define glColor3f				(dlextern lib "glColor3f"			"fff"))
    (define glColor3d				(dlextern lib "glColor3d"			"ddd"))
    (define glRectf				(dlextern lib "glRectf"				"ffff"))
    (define glRectd				(dlextern lib "glRectd"				"dddd"))
    (define glGenTextures			(dlextern lib "glGenTextures"			"ip"))
    (define glBindTexture			(dlextern lib "glBindTexture"			"ii"))
    (define glTexParameterf			(dlextern lib "glTexParameterf"			"iif"))
    (define glTexParameteri			(dlextern lib "glTexParameteri"			"iii"))
    (define glTexImage2D			(dlextern lib "glTexImage2D"			"iiiiiiiip"))
    (define glTexSubImage2D			(dlextern lib "glTexSubImage2D"			"iiiiiiiip"))
    (define glBegin				(dlextern lib "glBegin"				"i"))
    (define glEnd				(dlextern lib "glEnd"				""))
    (define glTexCoord2f			(dlextern lib "glTexCoord2f"			"ff"))
    (define glVertex2f				(dlextern lib "glVertex2f"			"ff"))
    (define glEnable				(dlextern lib "glEnable"			"i"))
    (define glDisable				(dlextern lib "glDisable"			"i"))
    (define glBlendFunc				(dlextern lib "glBlendFunc"			"ii"))
    (define glDepthFunc				(dlextern lib "glDepthFunc"			"i"))
    (define glShadeModel			(dlextern lib "glShadeModel"			"i"))
    (define glTranslatef			(dlextern lib "glTranslatef"			"fff"))
    (define glRotatef				(dlextern lib "glRotatef"			"ffff"))
    (define glScalef				(dlextern lib "glScalef"			"fff"))
    (define glVertex3f				(dlextern lib "glVertex3f"			"fff"))
    (define glPushAttrib			(dlextern lib "glPushAttrib"			"i"))
    (define glPopAttrib				(dlextern lib "glPopAttrib"			"i"))
    (define glGenRenderbuffersEXT		(dlextern lib "glGenRenderbuffersEXT"		"ip"))
    (define glBindRenderbufferEXT		(dlextern lib "glBindRenderbufferEXT"		"ii"))
    (define glRenderbufferStorageEXT		(dlextern lib "glRenderbufferStorageEXT"	"ii"))
    (define glFramebufferRenderbufferEXT	(dlextern lib "glFramebufferRenderbufferEXT"	"iiii"))
    (define glGenFramebuffersEXT		(dlextern lib "glGenFramebuffersEXT"		"ip"))
    (define glBindFramebufferEXT		(dlextern lib "glBindFramebufferEXT"		"ii"))
    (define glFramebufferTexture2DEXT		(dlextern lib "glFramebufferTexture2DEXT"	"iiiii"))
    (define glCheckFramebufferStatusEXT		(dlextern lib "glCheckFramebufferStatusEXT"	"i"))
    (define glGenBuffersARB			(dlextern lib "glGenBuffersARB"			"ip"))
    (define glBindBufferARB			(dlextern lib "glBindBufferARB"			"ii"))
    (define glBufferDataARB			(dlextern lib "glBufferDataARB"			"ii"))
    (define glMapBufferARB			(dlextern lib "glMapBuffer"			"ii"))
    (define glUnmapBufferARB			(dlextern lib "glUnmapBuffer"			"i"))
    ))
