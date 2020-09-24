.class public Lcolor/support/v7/widget/b;
.super Landroid/widget/PopupWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/b$b;,
        Lcolor/support/v7/widget/b$a;
    }
.end annotation


# static fields
.field private static final R:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:[I

.field private F:[I

.field private G:Landroid/graphics/Rect;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:I

.field private L:I

.field private M:Z

.field private N:I

.field private O:Lcolor/support/v7/widget/b$a;

.field private P:Z

.field private Q:I

.field private S:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Z

.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/view/View$OnTouchListener;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcolor/support/v7/widget/b;->R:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcolor/support/v7/widget/b;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcolor/support/v7/widget/b;->i:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->j:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->k:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->l:Z

    const/4 v2, -0x1

    iput v2, p0, Lcolor/support/v7/widget/b;->m:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->p:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->q:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->s:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->t:Z

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcolor/support/v7/widget/b;->E:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcolor/support/v7/widget/b;->F:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/b;->G:Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    iput v1, p0, Lcolor/support/v7/widget/b;->N:I

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->P:Z

    iput v2, p0, Lcolor/support/v7/widget/b;->Q:I

    new-instance v1, Lcolor/support/v7/widget/b$1;

    invoke-direct {v1, p0}, Lcolor/support/v7/widget/b$1;-><init>(Lcolor/support/v7/widget/b;)V

    iput-object v1, p0, Lcolor/support/v7/widget/b;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p1, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    sget-object v1, Lcolor/support/v7/a/a$n;->PopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v3, Lcolor/support/v7/a/a$n;->PopupWindowCompat:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->PopupWindow_android_popupBackground:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lcolor/support/v7/a/a$n;->PopupWindowCompat_supportPopupElevation:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcolor/support/v7/widget/b;->D:F

    sget p3, Lcolor/support/v7/a/a$n;->PopupWindow_overlapAnchor:I

    invoke-virtual {v1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcolor/support/v7/widget/b;->X:Z

    sget p3, Lcolor/support/v7/a/a$n;->PopupWindowCompat_android_popupAnimationStyle:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget p4, Lcolor/support/v7/a/a$m;->Animation_ColorSupport_PopupWindow:I

    if-ne p3, p4, :cond_0

    move p3, v2

    :cond_0
    iput p3, p0, Lcolor/support/v7/widget/b;->Q:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcolor/support/v7/widget/b;->h:I

    const/4 v1, 0x1

    iput v1, p0, Lcolor/support/v7/widget/b;->i:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->j:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->k:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->l:Z

    const/4 v2, -0x1

    iput v2, p0, Lcolor/support/v7/widget/b;->m:I

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->p:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->q:Z

    iput-boolean v1, p0, Lcolor/support/v7/widget/b;->s:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->t:Z

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcolor/support/v7/widget/b;->E:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcolor/support/v7/widget/b;->F:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/b;->G:Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    iput v1, p0, Lcolor/support/v7/widget/b;->N:I

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->P:Z

    iput v2, p0, Lcolor/support/v7/widget/b;->Q:I

    new-instance v0, Lcolor/support/v7/widget/b$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/b$1;-><init>(Lcolor/support/v7/widget/b;)V

    iput-object v0, p0, Lcolor/support/v7/widget/b;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcolor/support/v7/widget/b;->setWidth(I)V

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/b;->setHeight(I)V

    invoke-virtual {p0, p4}, Lcolor/support/v7/widget/b;->setFocusable(Z)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->P:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->g:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Lcolor/support/v7/widget/b;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    :goto_0
    or-int/2addr p1, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcolor/support/v7/widget/b;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->j:Z

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x10

    :cond_3
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->k:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_4
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->l:Z

    if-nez v0, :cond_5

    or-int/lit16 p1, p1, 0x200

    :cond_5
    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_6
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->n:Z

    if-eqz v0, :cond_7

    or-int/lit16 p1, p1, 0x100

    :cond_7
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->q:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_8
    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->r:Z

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x20

    :cond_9
    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->s:Z

    if-eqz p0, :cond_a

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr p1, p0

    :cond_a
    return p1
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcolor/support/v7/widget/b;->w:I

    iput v1, p0, Lcolor/support/v7/widget/b;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcolor/support/v7/widget/b;->z:I

    iput v1, p0, Lcolor/support/v7/widget/b;->A:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    :goto_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcolor/support/v7/widget/b;->a(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcolor/support/v7/widget/b;->N:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget p1, p0, Lcolor/support/v7/widget/b;->i:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcolor/support/v7/widget/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/view/View;III)V
    .locals 1

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->d()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/b;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput p2, p0, Lcolor/support/v7/widget/b;->U:I

    iput p3, p0, Lcolor/support/v7/widget/b;->V:I

    iput p4, p0, Lcolor/support/v7/widget/b;->W:I

    return-void
.end method

.method private a(Landroid/view/View;ZIIZIII)V
    .locals 15

    move-object v6, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v2, p6

    move/from16 v5, p7

    move/from16 v7, p8

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v6, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-nez v8, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v8, v6, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_2

    iget v11, v6, Lcolor/support/v7/widget/b;->U:I

    if-ne v11, v3, :cond_1

    iget v11, v6, Lcolor/support/v7/widget/b;->V:I

    if-eq v11, v4, :cond_2

    :cond_1
    move v11, v9

    goto :goto_0

    :cond_2
    move v11, v10

    :goto_0
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4

    if-eqz v11, :cond_3

    iget-boolean v8, v6, Lcolor/support/v7/widget/b;->d:Z

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_5

    iput v3, v6, Lcolor/support/v7/widget/b;->U:I

    iput v4, v6, Lcolor/support/v7/widget/b;->V:I

    iput v7, v6, Lcolor/support/v7/widget/b;->W:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, v1, v3, v4, v7}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;III)V

    :cond_5
    :goto_2
    iget-object v8, v6, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz p5, :cond_8

    const/4 v11, -0x1

    if-ne v2, v11, :cond_6

    iget v2, v6, Lcolor/support/v7/widget/b;->B:I

    goto :goto_3

    :cond_6
    iput v2, v6, Lcolor/support/v7/widget/b;->B:I

    :goto_3
    if-ne v5, v11, :cond_7

    iget v5, v6, Lcolor/support/v7/widget/b;->C:I

    goto :goto_4

    :cond_7
    iput v5, v6, Lcolor/support/v7/widget/b;->C:I

    :cond_8
    :goto_4
    move v11, v2

    move v12, v5

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz p2, :cond_9

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    :goto_5
    invoke-direct {p0, v0}, Lcolor/support/v7/widget/b;->a(Z)V

    goto :goto_6

    :cond_9
    iget v0, v6, Lcolor/support/v7/widget/b;->U:I

    iget v2, v6, Lcolor/support/v7/widget/b;->V:I

    iget v3, v6, Lcolor/support/v7/widget/b;->W:I

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v8

    move/from16 p5, v0

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-direct/range {p2 .. p7}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    goto :goto_5

    :goto_6
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v13, v2, :cond_b

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v14, v2, :cond_a

    goto :goto_7

    :cond_a
    move v9, v10

    :cond_b
    :goto_7
    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v9

    invoke-virtual/range {p0 .. p5}, Lcolor/support/v7/widget/b;->update(IIIIZ)V

    :cond_c
    :goto_8
    return-void
.end method

.method static synthetic a(Lcolor/support/v7/widget/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->M:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->M:Z

    iget-object p1, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/b;->I:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcolor/support/v7/widget/b;->M:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object p0, p0, Lcolor/support/v7/widget/b;->I:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object p0, p0, Lcolor/support/v7/widget/b;->J:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-boolean v6, v0, Lcolor/support/v7/widget/b;->X:Z

    if-eqz v6, :cond_0

    sub-int v6, p4, v4

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    iget-object v7, v0, Lcolor/support/v7/widget/b;->E:[I

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, v0, Lcolor/support/v7/widget/b;->E:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int v7, v7, p3

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, v0, Lcolor/support/v7/widget/b;->E:[I

    const/4 v9, 0x1

    aget v7, v7, v9

    add-int/2addr v7, v4

    add-int/2addr v7, v6

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    move/from16 v10, p5

    invoke-static {v10, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_1

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v12, v0, Lcolor/support/v7/widget/b;->B:I

    sub-int/2addr v12, v5

    sub-int/2addr v11, v12

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    const/16 v11, 0x33

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v11, v0, Lcolor/support/v7/widget/b;->F:[I

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcolor/support/v7/widget/b;->F:[I

    aget v12, v12, v9

    add-int/2addr v12, v4

    add-int/2addr v12, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    iget v14, v0, Lcolor/support/v7/widget/b;->C:I

    add-int/2addr v12, v14

    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    if-gt v12, v14, :cond_2

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v0, Lcolor/support/v7/widget/b;->B:I

    add-int/2addr v12, v14

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v12, v14

    if-lez v12, :cond_7

    :cond_2
    iget-boolean v12, v0, Lcolor/support/v7/widget/b;->p:Z

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    new-instance v15, Landroid/graphics/Rect;

    iget v10, v0, Lcolor/support/v7/widget/b;->B:I

    add-int/2addr v10, v12

    add-int v10, v10, p3

    iget v8, v0, Lcolor/support/v7/widget/b;->C:I

    add-int/2addr v8, v14

    add-int/2addr v8, v4

    add-int/2addr v8, v6

    invoke-direct {v15, v12, v14, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v15, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_3
    iget-object v8, v0, Lcolor/support/v7/widget/b;->E:[I

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v8, v0, Lcolor/support/v7/widget/b;->E:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    add-int v8, v8, p3

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, v0, Lcolor/support/v7/widget/b;->E:[I

    aget v3, v3, v9

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x5

    if-ne v7, v3, :cond_4

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v0, Lcolor/support/v7/widget/b;->B:I

    sub-int/2addr v7, v5

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_4
    iget-object v3, v0, Lcolor/support/v7/widget/b;->F:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcolor/support/v7/widget/b;->F:[I

    aget v3, v3, v9

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v6

    iget-object v3, v0, Lcolor/support/v7/widget/b;->F:[I

    aget v3, v3, v9

    sub-int/2addr v3, v6

    iget v7, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_5

    move v8, v9

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_6

    const/16 v1, 0x53

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, v0, Lcolor/support/v7/widget/b;->E:[I

    aget v3, v3, v9

    sub-int/2addr v1, v3

    :goto_2
    add-int/2addr v1, v6

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcolor/support/v7/widget/b;->E:[I

    aget v1, v1, v9

    add-int/2addr v1, v4

    goto :goto_2

    :cond_7
    :goto_3
    iget-boolean v1, v0, Lcolor/support/v7/widget/b;->o:Z

    if-eqz v1, :cond_b

    iget v1, v11, Landroid/graphics/Rect;->right:I

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v3, v7

    if-le v3, v1, :cond_8

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    sub-int/2addr v7, v3

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_8
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v11, Landroid/graphics/Rect;->left:I

    if-ge v3, v7, :cond_9

    iget v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_9
    if-eqz v8, :cond_a

    iget-object v1, v0, Lcolor/support/v7/widget/b;->F:[I

    aget v1, v1, v9

    add-int/2addr v1, v6

    iget v3, v0, Lcolor/support/v7/widget/b;->C:I

    sub-int/2addr v1, v3

    if-gez v1, :cond_b

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_a
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_b
    :goto_4
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, v0, Lcolor/support/v7/widget/b;->E:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iput v1, v0, Lcolor/support/v7/widget/b;->K:I

    iget-object v1, v0, Lcolor/support/v7/widget/b;->E:[I

    aget v1, v1, v9

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iput v1, v0, Lcolor/support/v7/widget/b;->L:I

    return v8
.end method

.method static synthetic a(Lcolor/support/v7/widget/b;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result p0

    return p0
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcolor/support/v7/widget/b;->R:[I

    return-object v0
.end method

.method static synthetic b(Lcolor/support/v7/widget/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcolor/support/v7/widget/b;->Y:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v0, Lcolor/support/v7/widget/b$b;

    iget-object v3, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcolor/support/v7/widget/b$b;-><init>(Lcolor/support/v7/widget/b;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/b$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/widget/b$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    :goto_1
    iput-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget v1, p0, Lcolor/support/v7/widget/b;->D:F

    invoke-static {v0, v1}, Landroidx/core/f/t;->a(Landroid/view/View;F)V

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-static {v0}, Lcolor/support/b/a/a;->a(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->Y:Z

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcolor/support/v7/widget/b;->B:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, p0, Lcolor/support/v7/widget/b;->C:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c()I
    .locals 2

    iget v0, p0, Lcolor/support/v7/widget/b;->Q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcolor/support/v7/widget/b;->d:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->M:Z

    if-eqz p0, :cond_0

    sget p0, Lcolor/support/v7/a/a$m;->Animation_ColorSupport_DropDownUp:I

    goto :goto_0

    :cond_0
    sget p0, Lcolor/support/v7/a/a$m;->Animation_ColorSupport_DropDownDown:I

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    iget p0, p0, Lcolor/support/v7/widget/b;->Q:I

    return p0
.end method

.method static synthetic c(Lcolor/support/v7/widget/b;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->U:I

    return p0
.end method

.method static synthetic d(Lcolor/support/v7/widget/b;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->V:I

    return p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcolor/support/v7/widget/b;->T:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    iput-object v1, p0, Lcolor/support/v7/widget/b;->S:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic e(Lcolor/support/v7/widget/b;)I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->W:I

    return p0
.end method

.method static synthetic f(Lcolor/support/v7/widget/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->M:Z

    return p0
.end method

.method static synthetic g(Lcolor/support/v7/widget/b;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->u:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic h(Lcolor/support/v7/widget/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-boolean v1, p0, Lcolor/support/v7/widget/b;->q:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->b()V

    iget-object v0, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .locals 4

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->c:Z

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->d()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object v2, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->O:Lcolor/support/v7/widget/b$a;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcolor/support/v7/widget/b;->O:Lcolor/support/v7/widget/b$a;

    invoke-interface {p0}, Lcolor/support/v7/widget/b$a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object v3, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    iget-object v0, p0, Lcolor/support/v7/widget/b;->O:Lcolor/support/v7/widget/b$a;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcolor/support/v7/widget/b;->O:Lcolor/support/v7/widget/b$a;

    invoke-interface {p0}, Lcolor/support/v7/widget/b$a;->a()V

    :cond_2
    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->Q:I

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    return-object p0
.end method

.method public getElevation()F
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->D:F

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->z:I

    return p0
.end method

.method public getInputMethodMode()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->h:I

    return p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcolor/support/v7/widget/b;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcolor/support/v7/widget/b;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p0

    return p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcolor/support/v7/widget/b;->E:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/4 p3, 0x1

    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcolor/support/v7/widget/b;->G:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Lcolor/support/v7/widget/b;->G:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcolor/support/v7/widget/b;->G:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public getSoftInputMode()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->i:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->w:I

    return p0
.end method

.method public getWindowLayoutType()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/widget/b;->N:I

    return p0
.end method

.method public isAboveAnchor()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->M:Z

    return p0
.end method

.method public isAttachedInDecor()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->s:Z

    return p0
.end method

.method public isClippingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->l:Z

    return p0
.end method

.method public isFocusable()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->g:Z

    return p0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->n:Z

    return p0
.end method

.method public isOutsideTouchable()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->k:Z

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->c:Z

    return p0
.end method

.method public isSplitTouchEnabled()Z
    .locals 3

    iget v0, p0, Lcolor/support/v7/widget/b;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Lcolor/support/v7/widget/b;->m:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 0

    iget-boolean p0, p0, Lcolor/support/v7/widget/b;->j:Z

    return p0
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->Q:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->s:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->t:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcolor/support/v7/widget/b;->H:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcolor/support/v7/widget/b;->J:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcolor/support/v7/widget/b;->I:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->o:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b;->setClippingEnabled(Z)V

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->l:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    iget-object p1, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcolor/support/v7/widget/b;->t:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcolor/support/v7/widget/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b;->setAttachedInDecor(Z)V

    :cond_4
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->D:F

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->g:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->z:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->P:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->h:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->n:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->q:Z

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->k:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->i:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->m:I

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/widget/b;->u:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->r:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcolor/support/v7/widget/b;->j:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->w:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->v:I

    iput p2, p0, Lcolor/support/v7/widget/b;->y:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/widget/b;->N:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcolor/support/v7/widget/b;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Lcolor/support/v7/widget/b;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->c:Z

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->d:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/b;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/b;->b(Landroid/view/WindowManager$LayoutParams;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result p1

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/b;->a(Z)V

    iget p1, p0, Lcolor/support/v7/widget/b;->y:I

    if-gez p1, :cond_1

    iget p1, p0, Lcolor/support/v7/widget/b;->y:I

    iput p1, p0, Lcolor/support/v7/widget/b;->A:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    iget p1, p0, Lcolor/support/v7/widget/b;->v:I

    if-gez p1, :cond_2

    iget p1, p0, Lcolor/support/v7/widget/b;->v:I

    iput p1, p0, Lcolor/support/v7/widget/b;->x:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    invoke-direct {p0}, Lcolor/support/v7/widget/b;->c()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0, v0}, Lcolor/support/v7/widget/b;->a(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 1

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/widget/b;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/widget/b;->d:Z

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/b;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->c()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/b;->b(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p2, :cond_1

    const p2, 0x800033

    :cond_1
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p0, Lcolor/support/v7/widget/b;->y:I

    if-gez p2, :cond_2

    iget p2, p0, Lcolor/support/v7/widget/b;->y:I

    iput p2, p0, Lcolor/support/v7/widget/b;->A:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget p2, p0, Lcolor/support/v7/widget/b;->v:I

    if-gez p2, :cond_3

    iget p2, p0, Lcolor/support/v7/widget/b;->v:I

    iput p2, p0, Lcolor/support/v7/widget/b;->x:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_3
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/b;->a(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcolor/support/v7/widget/b;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 5

    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->c()I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v4

    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcolor/support/v7/widget/b;->a(I)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v1, v4

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->b()V

    iget-object v1, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public update(II)V
    .locals 7

    iget-object v0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcolor/support/v7/widget/b;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcolor/support/v7/widget/b;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iput p3, p0, Lcolor/support/v7/widget/b;->x:I

    invoke-virtual {p0, p3}, Lcolor/support/v7/widget/b;->setWidth(I)V

    :cond_0
    if-eq p4, v0, :cond_1

    iput p4, p0, Lcolor/support/v7/widget/b;->A:I

    invoke-virtual {p0, p4}, Lcolor/support/v7/widget/b;->setHeight(I)V

    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/b;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcolor/support/v7/widget/b;->e:Landroid/view/View;

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcolor/support/v7/widget/b;->v:I

    if-gez v2, :cond_3

    iget v2, p0, Lcolor/support/v7/widget/b;->v:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcolor/support/v7/widget/b;->x:I

    :goto_0
    const/4 v3, 0x1

    if-eq p3, v0, :cond_4

    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq p3, v2, :cond_4

    iput v2, p0, Lcolor/support/v7/widget/b;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v3

    :cond_4
    iget p3, p0, Lcolor/support/v7/widget/b;->y:I

    if-gez p3, :cond_5

    iget p3, p0, Lcolor/support/v7/widget/b;->y:I

    goto :goto_1

    :cond_5
    iget p3, p0, Lcolor/support/v7/widget/b;->A:I

    :goto_1
    if-eq p4, v0, :cond_6

    iget p4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p4, p3, :cond_6

    iput p3, p0, Lcolor/support/v7/widget/b;->A:I

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v3

    :cond_6
    iget p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_7

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v3

    :cond_7
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_8

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v3

    :cond_8
    invoke-direct {p0}, Lcolor/support/v7/widget/b;->c()I

    move-result p1

    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_9

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v3

    :cond_9
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/b;->a(I)I

    move-result p1

    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_a

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    move p5, v3

    :cond_a
    if-eqz p5, :cond_b

    invoke-direct {p0}, Lcolor/support/v7/widget/b;->b()V

    iget-object p1, p0, Lcolor/support/v7/widget/b;->b:Landroid/view/WindowManager;

    iget-object p0, p0, Lcolor/support/v7/widget/b;->f:Landroid/view/View;

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 9

    iget v8, p0, Lcolor/support/v7/widget/b;->W:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;ZIIZIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9

    iget v8, p0, Lcolor/support/v7/widget/b;->W:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcolor/support/v7/widget/b;->a(Landroid/view/View;ZIIZIII)V

    return-void
.end method
