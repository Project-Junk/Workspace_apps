.class Lcom/oppo/camera/gl/q$h;
.super Ljava/lang/Object;
.source "OppoGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/microedition/khronos/egl/EGL10;

.field private d:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;

.field private f:Ljavax/microedition/khronos/egl/EGLSurface;

.field private g:Ljavax/microedition/khronos/egl/EGLConfig;

.field private h:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    .line 803
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/gl/q$h;->a:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;)V"
        }
    .end annotation

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 806
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    .line 807
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 808
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 809
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 812
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 813
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 814
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 817
    iput-object p1, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/opengles/GL;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$h;->h()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    .line 1139
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logEglErrorAsWarning, function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/gl/q$h;)V
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$h;->j()V

    return-void
.end method

.method private h()Ljavax/microedition/khronos/opengles/GL;
    .locals 6

    .line 1018
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1019
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/q;

    if-eqz v1, :cond_3

    .line 1022
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->e(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$k;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1023
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->e(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/oppo/camera/gl/q$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1026
    :cond_0
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->f(Lcom/oppo/camera/gl/q;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1030
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->f(Lcom/oppo/camera/gl/q;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v2, v5

    .line 1034
    :cond_1
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->f(Lcom/oppo/camera/gl/q;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1035
    new-instance v3, Lcom/oppo/camera/gl/q$l;

    invoke-direct {v3}, Lcom/oppo/camera/gl/q$l;-><init>()V

    .line 1038
    :cond_2
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private i()V
    .locals 5

    .line 1078
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1080
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1083
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->c(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$g;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    .line 1086
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    .line 1092
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1094
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1097
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->c(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$g;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyOutputEGLSurfaceImp, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1102
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 832
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 837
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 839
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    .line 846
    new-array v0, v0, [I

    .line 848
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 855
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 856
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 859
    new-array v9, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 860
    new-array v8, v2, [I

    .line 861
    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/oppo/camera/gl/q$h;->a:[I

    array-length v7, v9

    move-object v6, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v2, 0x0

    .line 862
    aget-object v2, v9, v2

    iput-object v2, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 868
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->b(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$f;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lcom/oppo/camera/gl/q$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 871
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_2

    .line 872
    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 873
    invoke-direct {p0, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;)V

    .line 876
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, createContext: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GLSurfaceView"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 879
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 849
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1152
    iget-object p1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const-string v0, "GLSurfaceView"

    const-string v1, "eglMakeCurrent"

    invoke-static {v0, v1, p1}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 6

    .line 896
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    .line 900
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 904
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    .line 911
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$h;->i()V

    .line 916
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    .line 919
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->c(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$g;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 920
    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 919
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/oppo/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 922
    iput-object v0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 925
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v1, "GLSurfaceView"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v3, "eglMakeCurrent"

    invoke-static {v1, v3, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 926
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v3, 0x300b

    if-ne v0, v3, :cond_4

    const-string v0, "createSurface, createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 929
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 905
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 6

    const-string v0, "GLSurfaceView"

    const-string v1, "createOutputEGLSurface"

    .line 953
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_7

    .line 966
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_6

    .line 970
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v1, :cond_5

    .line 977
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$h;->j()V

    .line 982
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/q;

    if-eqz v1, :cond_0

    .line 985
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->c(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$g;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/oppo/camera/gl/q$h;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 986
    invoke-static {v1}, Lcom/oppo/camera/gl/q;->d(Lcom/oppo/camera/gl/q;)Landroid/view/Surface;

    move-result-object v1

    .line 985
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/oppo/camera/gl/q$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 988
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 991
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 1004
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const-string v3, "eglMakeCurrent"

    invoke-static {v0, v3, v1}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 992
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v3, 0x300b

    if-ne v1, v3, :cond_4

    const-string v1, "createOutputEGLSurface, createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 995
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 971
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .locals 3

    .line 1050
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public e()I
    .locals 3

    .line 1059
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public f()V
    .locals 0

    .line 1071
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$h;->i()V

    .line 1074
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$h;->j()V

    return-void
.end method

.method public g()V
    .locals 5

    .line 1111
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish, destroyContext mEglContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLSurfaceView"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->b(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$f;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/oppo/camera/gl/q$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1120
    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1124
    iget-object v2, p0, Lcom/oppo/camera/gl/q$h;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1125
    iput-object v1, p0, Lcom/oppo/camera/gl/q$h;->d:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
