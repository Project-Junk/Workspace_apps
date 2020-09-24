.class Landroidx/appcompat/app/f;
.super Landroidx/appcompat/app/e;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/f$a;,
        Landroidx/appcompat/app/f$e;,
        Landroidx/appcompat/app/f$g;,
        Landroidx/appcompat/app/f$f;,
        Landroidx/appcompat/app/f$d;,
        Landroidx/appcompat/app/f$h;,
        Landroidx/appcompat/app/f$i;,
        Landroidx/appcompat/app/f$b;,
        Landroidx/appcompat/app/f$j;,
        Landroidx/appcompat/app/f$c;
    }
.end annotation


# static fields
.field private static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Z

.field private static final v:[I

.field private static w:Z


# instance fields
.field private A:Landroidx/appcompat/app/f$b;

.field private B:Landroidx/appcompat/app/f$j;

.field private C:Z

.field private D:Z

.field private E:Landroid/view/ViewGroup;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:[Landroidx/appcompat/app/f$i;

.field private L:Landroidx/appcompat/app/f$i;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Landroidx/appcompat/app/f$f;

.field private V:Landroidx/appcompat/app/f$f;

.field private final W:Ljava/lang/Runnable;

.field private X:Z

.field private Y:Landroid/graphics/Rect;

.field private Z:Landroid/graphics/Rect;

.field final a:Ljava/lang/Object;

.field private aa:Landroidx/appcompat/app/AppCompatViewInflater;

.field final b:Landroid/content/Context;

.field c:Landroid/view/Window;

.field final d:Landroidx/appcompat/app/d;

.field e:Landroidx/appcompat/app/a;

.field f:Landroid/view/MenuInflater;

.field g:Landroidx/appcompat/view/b;

.field h:Landroidx/appcompat/widget/ActionBarContextView;

.field i:Landroid/widget/PopupWindow;

.field j:Ljava/lang/Runnable;

.field k:Landroidx/core/f/x;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field private x:Landroidx/appcompat/app/f$d;

.field private y:Ljava/lang/CharSequence;

.field private z:Landroidx/appcompat/widget/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Landroidx/appcompat/app/f;->u:Z

    new-array v0, v2, [I

    const v3, 0x1010054

    aput v3, v0, v1

    sput-object v0, Landroidx/appcompat/app/f;->v:[I

    sget-boolean v0, Landroidx/appcompat/app/f;->u:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroidx/appcompat/app/f;->w:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/f$1;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/f$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v2, Landroidx/appcompat/app/f;->w:Z

    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->C:Z

    const/16 v0, -0x64

    iput v0, p0, Landroidx/appcompat/app/f;->Q:I

    new-instance v1, Landroidx/appcompat/app/f$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$2;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->W:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iput-object p4, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    iget p1, p0, Landroidx/appcompat/app/f;->Q:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/e;->j()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/f;->Q:I

    :cond_0
    iget p1, p0, Landroidx/appcompat/app/f;->Q:I

    if-ne p1, v0, :cond_1

    sget-object p1, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    iget-object p3, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/f;->Q:I

    sget-object p1, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    iget-object p3, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Landroidx/appcompat/app/f;->a(Landroid/view/Window;)V

    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/i;->a()V

    return-void
.end method

.method private A()Landroid/view/ViewGroup;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/f;->d(I)Z

    goto :goto_0

    :cond_0
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->d(I)Z

    :cond_1
    :goto_0
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/f;->d(I)Z

    :cond_2
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->d(I)Z

    :cond_3
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/f;->o:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->p:Z

    const/4 v5, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->o:Z

    if-eqz v1, :cond_4

    sget v1, Landroidx/appcompat/a$g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->l:Z

    goto/16 :goto_4

    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Landroidx/appcompat/a$a;->actionBarTheme:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Landroidx/appcompat/view/d;

    iget-object v3, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroidx/appcompat/a$f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ab;

    iput-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ab;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->m:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v1, v4}, Landroidx/appcompat/widget/ab;->a(I)V

    :cond_6
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->H:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ab;->a(I)V

    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->I:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ab;->a(I)V

    goto :goto_4

    :cond_8
    move-object v0, v5

    goto :goto_4

    :cond_9
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->n:Z

    if-eqz v1, :cond_a

    sget v1, Landroidx/appcompat/a$g;->abc_screen_simple_overlay_action_mode:I

    :goto_2
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_a
    sget v1, Landroidx/appcompat/a$g;->abc_screen_simple:I

    goto :goto_2

    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_b

    new-instance v1, Landroidx/appcompat/app/f$3;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$3;-><init>(Landroidx/appcompat/app/f;)V

    invoke-static {v0, v1}, Landroidx/core/f/t;->a(Landroid/view/View;Landroidx/core/f/q;)V

    goto :goto_4

    :cond_b
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/af;

    new-instance v3, Landroidx/appcompat/app/f$4;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/f$4;-><init>(Landroidx/appcompat/app/f;)V

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/af;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/af$a;)V

    :cond_c
    :goto_4
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-nez v1, :cond_d

    sget v1, Landroidx/appcompat/a$f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/f;->F:Landroid/widget/TextView;

    :cond_d
    invoke-static {v0}, Landroidx/appcompat/widget/bb;->b(Landroid/view/View;)V

    sget v1, Landroidx/appcompat/a$f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_f

    :goto_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_e

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_e
    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v2, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Landroidx/appcompat/app/f$5;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/f$5;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/appcompat/app/f;->p:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private B()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(IIII)V

    iget-object p0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_0
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    return-void
.end method

.method private C()Landroidx/appcompat/app/AppCompatActivity;
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    instance-of v1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    return-object p0

    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private D()V
    .locals 1

    iget-boolean p0, p0, Landroidx/appcompat/app/f;->D:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private E()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/app/f;->Q:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget p0, p0, Landroidx/appcompat/app/f;->Q:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/app/f;->k()I

    move-result p0

    :goto_0
    return p0
.end method

.method private F()Landroidx/appcompat/app/f$f;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/f$e;

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$e;-><init>(Landroidx/appcompat/app/f;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    return-object p0
.end method

.method private G()Z
    .locals 6

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->T:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->S:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->S:Z

    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->T:Z

    iget-boolean p0, p0, Landroidx/appcompat/app/f;->S:Z

    return p0
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/f$d;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/app/f$d;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/f$d;-><init>(Landroidx/appcompat/app/f;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    iget-object v0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/f;->v:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/av;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/av;->b()V

    iput-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppCompat has already installed itself into the Window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppCompat has already installed itself into the Window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)V
    .locals 13

    iget-boolean v0, p1, Landroidx/appcompat/app/f$i;->o:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p1, Landroidx/appcompat/app/f$i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Landroidx/appcompat/app/f$i;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Landroidx/appcompat/app/f$i;->q:Z

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    if-eqz p0, :cond_e

    iget-object p0, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_e

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p0, v3, :cond_e

    move v6, v3

    goto :goto_2

    :cond_7
    :goto_1
    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_9

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_a

    :cond_8
    return-void

    :cond_9
    iget-boolean p2, p1, Landroidx/appcompat/app/f$i;->q:Z

    if-eqz p2, :cond_a

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->c(Landroidx/appcompat/app/f$i;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Landroidx/appcompat/app/f$i;->a()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_3

    :cond_b
    iget-object p0, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_c

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_c
    iget p2, p1, Landroidx/appcompat/app/f$i;->b:I

    iget-object v3, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    invoke-virtual {p2, v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-nez p0, :cond_e

    iget-object p0, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_e
    move v6, v4

    :goto_2
    iput-boolean v1, p1, Landroidx/appcompat/app/f$i;->n:Z

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroidx/appcompat/app/f$i;->d:I

    iget v9, p1, Landroidx/appcompat/app/f$i;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget p2, p1, Landroidx/appcompat/app/f$i;->c:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p2, p1, Landroidx/appcompat/app/f$i;->f:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p1, Landroidx/appcompat/app/f$i;->o:Z

    :cond_f
    :goto_3
    return-void
.end method

.method private a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 4

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p1}, Landroidx/appcompat/widget/ab;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p1}, Landroidx/appcompat/widget/ab;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v2}, Landroidx/appcompat/widget/ab;->f()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p2}, Landroidx/appcompat/widget/ab;->i()Z

    iget-boolean p2, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez p2, :cond_4

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p0

    iget-object p0, p0, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    iget-boolean p2, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Landroidx/appcompat/app/f;->r:Z

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/appcompat/app/f;->s:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Landroidx/appcompat/app/f;->W:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Landroidx/appcompat/app/f;->W:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p2

    iget-object v0, p2, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_4

    iget-boolean v0, p2, Landroidx/appcompat/app/f$i;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p2, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    iget-object v2, p2, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v1, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p2, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p0}, Landroidx/appcompat/widget/ab;->h()Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p1

    iput-boolean v0, p1, Landroidx/appcompat/app/f$i;->q:Z

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eq p1, p0, :cond_3

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/f/t;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private a(Landroidx/appcompat/app/f$i;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$i;->a(Landroid/content/Context;)V

    new-instance v0, Landroidx/appcompat/app/f$h;

    iget-object v1, p1, Landroidx/appcompat/app/f$i;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$h;-><init>(Landroidx/appcompat/app/f;Landroid/content/Context;)V

    iput-object v0, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    const/16 p0, 0x51

    iput p0, p1, Landroidx/appcompat/app/f$i;->c:I

    const/4 p0, 0x1

    return p0
.end method

.method private a(Landroidx/appcompat/app/f$i;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/f$i;->m:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    :cond_3
    return v1
.end method

.method private a(Z)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->j(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroidx/appcompat/app/f;->b(IZ)Z

    move-result p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->v()Landroidx/appcompat/app/f$f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/f$f;->d()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    invoke-virtual {v1}, Landroidx/appcompat/app/f$f;->e()V

    :cond_2
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Landroidx/appcompat/app/f;->F()Landroidx/appcompat/app/f$f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/f$f;->d()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$f;->e()V

    :cond_4
    :goto_1
    return p1
.end method

.method private b(IZ)Z
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    packed-switch p1, :pswitch_data_0

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x10

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->G()Z

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v0, :cond_0

    if-nez v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v6, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v6, v1

    iput v6, v0, Landroid/content/res/Configuration;->uiMode:I

    :try_start_0
    iget-object v6, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "AppCompatDelegate"

    const-string v7, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-nez v4, :cond_2

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_2

    if-nez v2, :cond_2

    iget-boolean p2, p0, Landroidx/appcompat/app/f;->N:Z

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_1

    iget-boolean p2, p0, Landroidx/appcompat/app/f;->O:Z

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Landroidx/core/app/a;->e(Landroid/app/Activity;)V

    move v4, v5

    :cond_2
    if-nez v4, :cond_3

    if-eq v0, v1, :cond_3

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/app/f;->c(IZ)V

    move v4, v5

    :cond_3
    if-eqz v4, :cond_4

    iget-object p2, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of p2, p2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNightModeChanged(I)V

    :cond_4
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroidx/appcompat/app/f$i;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget v1, p1, Landroidx/appcompat/app/f$i;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/appcompat/app/f$i;->a:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/a$a;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v5, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_1
    sget v5, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v1, Landroidx/appcompat/view/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    :cond_4
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/f$i;->a(Landroidx/appcompat/view/menu/g;)V

    return v2
.end method

.method private b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z
    .locals 8

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/f$i;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Landroidx/appcompat/app/f$i;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    :cond_3
    iget v3, p1, Landroidx/appcompat/app/f$i;->a:I

    if-eqz v3, :cond_5

    iget v3, p1, Landroidx/appcompat/app/f$i;->a:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v4}, Landroidx/appcompat/widget/ab;->j()V

    :cond_6
    iget-object v4, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroidx/appcompat/app/a;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/app/i;

    if-nez v4, :cond_15

    :cond_7
    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroidx/appcompat/app/f$i;->r:Z

    if-eqz v4, :cond_f

    :cond_8
    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_a

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz v3, :cond_c

    iget-object v4, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$b;

    if-nez v4, :cond_b

    new-instance v4, Landroidx/appcompat/app/f$b;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/f$b;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v4, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$b;

    :cond_b
    iget-object v4, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    iget-object v6, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    iget-object v7, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$b;

    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/ab;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_c
    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->h()V

    iget v4, p1, Landroidx/appcompat/app/f$i;->a:I

    iget-object v6, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/f$i;->a(Landroidx/appcompat/view/menu/g;)V

    if-eqz v3, :cond_d

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    iget-object p0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$b;

    invoke-interface {p1, v5, p0}, Landroidx/appcompat/widget/ab;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_d
    return v1

    :cond_e
    iput-boolean v1, p1, Landroidx/appcompat/app/f$i;->r:Z

    :cond_f
    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->h()V

    iget-object v4, p1, Landroidx/appcompat/app/f$i;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    iget-object v4, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    iget-object v6, p1, Landroidx/appcompat/app/f$i;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/g;->b(Landroid/os/Bundle;)V

    iput-object v5, p1, Landroidx/appcompat/app/f$i;->s:Landroid/os/Bundle;

    :cond_10
    iget-object v4, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    iget-object v6, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    iget-object p2, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz p2, :cond_11

    iget-object p2, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    iget-object p0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$b;

    invoke-interface {p2, v5, p0}, Landroidx/appcompat/widget/ab;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_11
    iget-object p0, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->i()V

    return v1

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_13
    const/4 p2, -0x1

    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_14

    move p2, v2

    goto :goto_3

    :cond_14
    move p2, v1

    :goto_3
    iput-boolean p2, p1, Landroidx/appcompat/app/f$i;->p:Z

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    iget-boolean v0, p1, Landroidx/appcompat/app/f$i;->p:Z

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    iget-object p2, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->i()V

    :cond_15
    iput-boolean v2, p1, Landroidx/appcompat/app/f$i;->m:Z

    iput-boolean v1, p1, Landroidx/appcompat/app/f$i;->n:Z

    iput-object p1, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    return v2
.end method

.method private c(IZ)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    or-int/2addr p1, v2

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p1, v2, :cond_0

    invoke-static {v0}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Resources;)V

    :cond_0
    iget p1, p0, Landroidx/appcompat/app/f;->R:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/app/f;->R:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    instance-of p2, p1, Landroidx/lifecycle/h;

    if-eqz p2, :cond_2

    move-object p0, p1

    check-cast p0, Landroidx/lifecycle/h;

    invoke-interface {p0}, Landroidx/lifecycle/h;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p0

    sget-object p2, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Landroidx/appcompat/app/f;->P:Z

    if-eqz p0, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method private c(Landroidx/appcompat/app/f$i;)Z
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p1, Landroidx/appcompat/app/f$i;->i:Landroid/view/View;

    iput-object p0, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    return v1

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$j;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/app/f$j;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$j;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$j;

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/f;->B:Landroidx/appcompat/app/f$j;

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/f$i;->a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    iput-object p0, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    iget-object p0, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p1

    iget-boolean v0, p1, Landroidx/appcompat/app/f$i;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object v2

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p1}, Landroidx/appcompat/widget/ab;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p1}, Landroidx/appcompat/widget/ab;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez p1, :cond_5

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p1}, Landroidx/appcompat/widget/ab;->h()Z

    move-result p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p1}, Landroidx/appcompat/widget/ab;->i()Z

    move-result p1

    goto :goto_2

    :cond_2
    iget-boolean p1, v2, Landroidx/appcompat/app/f$i;->o:Z

    if-nez p1, :cond_6

    iget-boolean p1, v2, Landroidx/appcompat/app/f$i;->n:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p1, v2, Landroidx/appcompat/app/f$i;->m:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v2, Landroidx/appcompat/app/f$i;->r:Z

    if-eqz p1, :cond_4

    iput-boolean v1, v2, Landroidx/appcompat/app/f$i;->m:Z

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    if-eqz p1, :cond_5

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)V

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, v1

    goto :goto_2

    :cond_6
    :goto_1
    iget-boolean p1, v2, Landroidx/appcompat/app/f$i;->o:Z

    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    :goto_2
    if-eqz p1, :cond_8

    iget-object p0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    const-string p0, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return p1
.end method

.method private k(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/app/f;->s:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/f;->s:I

    iget-boolean p1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/f/t;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroidx/appcompat/app/f;->r:Z

    :cond_0
    return-void
.end method

.method private l(I)I
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const-string p0, "AppCompatDelegate"

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6c

    return p0

    :cond_0
    const/16 p0, 0x9

    if-ne p1, p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6d

    return p0

    :cond_1
    return p1
.end method

.method private w()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/l;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/l;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/app/l;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/l;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    iget-boolean p0, p0, Landroidx/appcompat/app/f;->X:Z

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/a;->c(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$f;->e()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/app/f;->V:Landroidx/appcompat/app/f$f;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$f;->e()V

    :cond_1
    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private z()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->D:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroidx/appcompat/app/f;->A()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/ab;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroidx/appcompat/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/f;->F:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/app/f;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->D:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->k(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/app/f;->aa:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroidx/appcompat/a$j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, Landroidx/appcompat/app/f;->aa:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "AppCompatDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate custom view inflater "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    :goto_1
    iput-object v0, p0, Landroidx/appcompat/app/f;->aa:Landroidx/appcompat/app/AppCompatViewInflater;

    :cond_2
    :goto_2
    sget-boolean v0, Landroidx/appcompat/app/f;->u:Z

    if-eqz v0, :cond_4

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_4

    move v1, v2

    goto :goto_3

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_4
    :goto_3
    move v7, v1

    iget-object v2, p0, Landroidx/appcompat/app/f;->aa:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v8, Landroidx/appcompat/app/f;->u:Z

    const/4 v9, 0x1

    invoke-static {}, Landroidx/appcompat/widget/ba;->a()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a()Landroidx/appcompat/app/a;
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/f;->w()V

    iget-object p0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method protected a(IZ)Landroidx/appcompat/app/f$i;
    .locals 3

    iget-object p2, p0, Landroidx/appcompat/app/f;->K:[Landroidx/appcompat/app/f$i;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Landroidx/appcompat/app/f$i;

    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/app/f;->K:[Landroidx/appcompat/app/f$i;

    move-object p2, v0

    :cond_2
    aget-object p0, p2, p1

    if-nez p0, :cond_3

    new-instance p0, Landroidx/appcompat/app/f$i;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f$i;-><init>(I)V

    aput-object p0, p2, p1

    :cond_3
    return-object p0
.end method

.method a(Landroid/view/Menu;)Landroidx/appcompat/app/f$i;
    .locals 4

    iget-object p0, p0, Landroidx/appcompat/app/f;->K:[Landroidx/appcompat/app/f$i;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    :cond_0
    new-instance v0, Landroidx/appcompat/app/f$c;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$c;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iget-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-interface {p1, v1}, Landroidx/appcompat/app/d;->onSupportActionModeStarted(Landroidx/appcompat/view/b;)V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/f;->R:I

    return-void
.end method

.method a(ILandroidx/appcompat/app/f$i;Landroid/view/Menu;)V
    .locals 1

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->K:[Landroidx/appcompat/app/f$i;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object p2, p0, Landroidx/appcompat/app/f;->K:[Landroidx/appcompat/app/f$i;

    aget-object p2, p2, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroidx/appcompat/app/f$i;->o:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez p2, :cond_3

    iget-object p0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$d;->a()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->a(Z)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/f;->N:Z

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->a(Z)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/f;->N:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Z)Z

    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroidx/core/app/e;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroidx/appcompat/app/a;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/app/f;->X:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->c(Z)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/app/f;->O:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$d;->a()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$d;->a()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method a(Landroidx/appcompat/app/f$i;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Landroidx/appcompat/app/f$i;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v0}, Landroidx/appcompat/widget/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/menu/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Landroidx/appcompat/app/f$i;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/f$i;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Landroidx/appcompat/app/f$i;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/f;->a(ILandroidx/appcompat/app/f$i;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/appcompat/app/f$i;->m:Z

    iput-boolean p2, p1, Landroidx/appcompat/app/f$i;->n:Z

    iput-boolean p2, p1, Landroidx/appcompat/app/f$i;->o:Z

    iput-object v1, p1, Landroidx/appcompat/app/f$i;->h:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/app/f$i;->q:Z

    iget-object p2, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    :cond_2
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/view/menu/g;Z)V

    return-void
.end method

.method public a(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/l;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->g()V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Landroidx/appcompat/app/i;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->o()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/app/i;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroidx/appcompat/app/i;->h()Landroid/view/Window$Callback;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    iget-object v0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->f()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/f;->y:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ab;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroidx/appcompat/app/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/app/f;->F:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    iput-boolean v1, p0, Landroidx/appcompat/app/f$i;->n:Z

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/f;->L:Landroidx/appcompat/app/f$i;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;ILandroid/view/KeyEvent;I)Z

    move-result p0

    iput-boolean v0, p1, Landroidx/appcompat/app/f$i;->m:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/core/f/d$a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/appcompat/app/g;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Landroidx/core/f/d;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$d;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/f;->c(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/f;->b(ILandroid/view/KeyEvent;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->a(Landroid/view/Menu;)Landroidx/appcompat/app/f$i;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/appcompat/app/f$i;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/app/f;->w()V

    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    invoke-virtual {v1}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    return-object p0
.end method

.method public b(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->r()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/f$c;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/f$c;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$c;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V

    move-object p1, v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->onWindowStartingSupportActionMode(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->o:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroidx/appcompat/a$a;->actionBarTheme:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Landroidx/appcompat/view/d;

    iget-object v6, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroidx/appcompat/a$a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroidx/appcompat/a$a;->actionBarSize:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v4, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroidx/appcompat/app/f$6;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$6;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    sget v4, Landroidx/appcompat/a$f;->action_mode_bar_stub:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->n()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->r()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    new-instance v0, Landroidx/appcompat/view/e;

    iget-object v4, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-direct {v0, v4, v5, p1, v3}, Landroidx/appcompat/view/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->b()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/view/b;->d()V

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->p()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/f/x;->a(F)Landroidx/core/f/x;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    iget-object p1, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    new-instance v0, Landroidx/appcompat/app/f$7;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$7;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {p1, v0}, Landroidx/core/f/x;->a(Landroidx/core/f/y;)Landroidx/core/f/x;

    goto :goto_4

    :cond_8
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/f/t;->n(Landroid/view/View;)V

    :cond_9
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_a
    iput-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    :cond_b
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-interface {p1, v0}, Landroidx/appcompat/app/d;->onSupportActionModeStarted(Landroidx/appcompat/view/b;)V

    :cond_c
    iget-object p0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-object p0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$d;->a()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method b(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->J:Z

    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v0}, Landroidx/appcompat/widget/ab;->k()V

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/f;->J:Z

    return-void
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->e(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->M:Z

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->M:Z

    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroidx/appcompat/app/f$i;->o:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->s()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->P:Z

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->u()Z

    invoke-static {p0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/e;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/f;->x:Landroidx/appcompat/app/f$d;

    invoke-virtual {p0}, Landroidx/appcompat/app/f$d;->a()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    iget p1, p0, Landroidx/appcompat/app/f;->Q:I

    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    sget-object p1, Landroidx/appcompat/app/f;->t:Ljava/util/Map;

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget p0, p0, Landroidx/appcompat/app/f;->Q:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->d(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->M:Z

    :goto_1
    return v2
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->P:Z

    invoke-static {p0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/e;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->d(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    :cond_1
    return-void
.end method

.method public d(I)Z
    .locals 3

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->l(I)I

    move-result p1

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->l:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iput-boolean v1, p0, Landroidx/appcompat/app/f;->l:Z

    :cond_1
    sparse-switch p1, :sswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()V

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    return v2

    :sswitch_1
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()V

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->l:Z

    return v2

    :sswitch_2
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()V

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->n:Z

    return v2

    :sswitch_3
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()V

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->I:Z

    return v2

    :sswitch_4
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()V

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->H:Z

    return v2

    :sswitch_5
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()V

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->p:Z

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a;->d(Z)V

    :cond_0
    return-void
.end method

.method e(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a;->e(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p1

    iget-boolean v1, p1, Landroidx/appcompat/app/f$i;->o:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->k(I)V

    return-void
.end method

.method f(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a;->e(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/e;)V

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->P:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->g()V

    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    return-void
.end method

.method g(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$i;Z)V

    return-void
.end method

.method public final h()Landroidx/appcompat/app/b$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/f$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$a;-><init>(Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method h(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    iput-object v2, v1, Landroidx/appcompat/app/f$i;->s:Landroid/os/Bundle;

    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->h()V

    iget-object v2, v1, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->clear()V

    :cond_1
    iput-boolean v0, v1, Landroidx/appcompat/app/f$i;->r:Z

    iput-boolean v0, v1, Landroidx/appcompat/app/f$i;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean p1, v0, Landroidx/appcompat/app/f$i;->m:Z

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$i;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method i(I)I
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/app/f;->Y:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/f;->Y:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/f;->Z:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/app/f;->Y:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/appcompat/app/f;->Z:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroidx/appcompat/widget/bb;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    if-nez v2, :cond_2

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/a$c;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iget-object v4, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    iget-boolean v4, p0, Landroidx/appcompat/app/f;->n:Z

    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    move p1, v1

    goto :goto_4

    :cond_6
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_7

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v2, v3

    move v3, v1

    goto :goto_4

    :cond_7
    move v2, v1

    move v3, v2

    :cond_8
    :goto_4
    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    move v3, v1

    :cond_a
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroidx/appcompat/app/f;->G:Landroid/view/View;

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Landroidx/core/f/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/app/f;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public j()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/app/f;->Q:I

    return p0
.end method

.method j(I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->F()Landroidx/appcompat/app/f$f;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f$f;->a()I

    move-result p0

    return p0

    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->v()Landroidx/appcompat/app/f$f;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    return p1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method final l()Landroidx/appcompat/app/a;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method final m()Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    return-object p0
.end method

.method final n()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method final o()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/f;->y:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method final p()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/f;->E:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/f/t;->s(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/app/f;->C:Z

    return p0
.end method

.method r()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/x;

    invoke-virtual {p0}, Landroidx/core/f/x;->b()V

    :cond_0
    return-void
.end method

.method s()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    invoke-virtual {p0}, Landroidx/appcompat/view/b;->c()V

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/a;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method t()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->z:Landroidx/appcompat/widget/ab;

    invoke-interface {v0}, Landroidx/appcompat/widget/ab;->k()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->r()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$i;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/appcompat/app/f$i;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->close()V

    :cond_3
    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Z)Z

    move-result p0

    return p0
.end method

.method final v()Landroidx/appcompat/app/f$f;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/f$g;

    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/app/k;->a(Landroid/content/Context;)Landroidx/appcompat/app/k;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$g;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/app/k;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/f;->U:Landroidx/appcompat/app/f$f;

    return-object p0
.end method
