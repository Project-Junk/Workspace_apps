.class public Lcolor/support/v7/app/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/app/a$c;,
        Lcolor/support/v7/app/a$a;,
        Lcolor/support/v7/app/a$d;,
        Lcolor/support/v7/app/a$b;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:I

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/View;

.field private Q:I

.field private R:Z

.field private S:I

.field private T:I

.field private final U:Landroid/view/View$OnClickListener;

.field final a:Landroidx/appcompat/app/g;

.field final b:Landroid/view/Window;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Landroid/widget/ListView;

.field f:Landroid/widget/Button;

.field g:Ljava/lang/CharSequence;

.field h:Landroid/os/Message;

.field i:Landroid/widget/Button;

.field j:Ljava/lang/CharSequence;

.field k:Landroid/os/Message;

.field l:Landroid/widget/Button;

.field m:Ljava/lang/CharSequence;

.field n:Landroid/os/Message;

.field o:Landroid/widget/ScrollView;

.field p:Landroid/widget/ListAdapter;

.field q:I

.field protected r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:Landroid/os/Handler;

.field x:Z

.field private final y:Landroid/content/Context;

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/g;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcolor/support/v7/app/a;->G:Z

    iput v0, p0, Lcolor/support/v7/app/a;->K:I

    const/4 v1, -0x1

    iput v1, p0, Lcolor/support/v7/app/a;->q:I

    iput v0, p0, Lcolor/support/v7/app/a;->S:I

    iput v0, p0, Lcolor/support/v7/app/a;->T:I

    iput-boolean v0, p0, Lcolor/support/v7/app/a;->x:Z

    new-instance v1, Lcolor/support/v7/app/a$1;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/a$1;-><init>(Lcolor/support/v7/app/a;)V

    iput-object v1, p0, Lcolor/support/v7/app/a;->U:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcolor/support/v7/app/a;->y:Landroid/content/Context;

    iput-object p2, p0, Lcolor/support/v7/app/a;->a:Landroidx/appcompat/app/g;

    iput-object p3, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    new-instance p3, Lcolor/support/v7/app/a$b;

    invoke-direct {p3, p2}, Lcolor/support/v7/app/a$b;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcolor/support/v7/app/a;->w:Landroid/os/Handler;

    sget-object p3, Lcolor/support/v7/a/a$n;->AlertDialog:[I

    sget v1, Lcolor/support/v7/a/a$b;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->r:I

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->Q:I

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->s:I

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->t:I

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->u:I

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->v:I

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcolor/support/v7/app/a;->R:Z

    sget p3, Lcolor/support/v7/a/a$n;->AlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/app/a;->z:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/g;->a(I)Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_1

    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_3

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method static a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 2

    iget-object p2, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget p4, Lcolor/support/v7/a/a$g;->scrollIndicatorUp:I

    invoke-virtual {p2, p4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p4, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget v0, Lcolor/support/v7/a/a$g;->scrollIndicatorDown:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p4, :cond_8

    :goto_0
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p2, v0

    :cond_2
    if-eqz p4, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object p4, v0

    :cond_3
    if-nez p2, :cond_4

    if-eqz p4, :cond_8

    :cond_4
    iget-object p3, p0, Lcolor/support/v7/app/a;->d:Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    new-instance p3, Lcolor/support/v7/app/a$2;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/a$2;-><init>(Lcolor/support/v7/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object p1, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    new-instance p3, Lcolor/support/v7/app/a$3;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/a$3;-><init>(Lcolor/support/v7/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    new-instance p3, Lcolor/support/v7/app/a$4;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/a$4;-><init>(Lcolor/support/v7/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object p1, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    new-instance p3, Lcolor/support/v7/app/a$5;

    invoke-direct {p3, p0, p2, p4}, Lcolor/support/v7/app/a$5;-><init>(Lcolor/support/v7/app/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p4, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Landroid/widget/Button;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcolor/support/v7/a/a$b;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcolor/support/v7/app/a;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private d(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcolor/support/v7/app/a;->A:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/a;->A:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcolor/support/v7/app/a;->B:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/a;->y:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcolor/support/v7/app/a;->B:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcolor/support/v7/app/a;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget v2, Lcolor/support/v7/a/a$g;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcolor/support/v7/app/a;->G:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcolor/support/v7/app/a;->C:I

    iget v2, p0, Lcolor/support/v7/app/a;->D:I

    iget v3, p0, Lcolor/support/v7/app/a;->E:I

    iget v4, p0, Lcolor/support/v7/app/a;->F:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object p0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcolor/support/v7/app/a;->b()I

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/app/a;->a:Landroidx/appcompat/app/g;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/g;->setContentView(I)V

    invoke-virtual {p0}, Lcolor/support/v7/app/a;->d()V

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcolor/support/v7/app/a;->A:Landroid/view/View;

    iput p1, p0, Lcolor/support/v7/app/a;->B:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcolor/support/v7/app/a;->G:Z

    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcolor/support/v7/app/a;->w:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iput-object p2, p0, Lcolor/support/v7/app/a;->g:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcolor/support/v7/app/a;->h:Landroid/os/Message;

    iput-object p5, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcolor/support/v7/app/a;->j:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcolor/support/v7/app/a;->k:Landroid/os/Message;

    iput-object p5, p0, Lcolor/support/v7/app/a;->I:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcolor/support/v7/app/a;->m:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcolor/support/v7/app/a;->n:Landroid/os/Message;

    iput-object p5, p0, Lcolor/support/v7/app/a;->J:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcolor/support/v7/app/a;->L:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcolor/support/v7/app/a;->K:I

    iget-object v1, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/app/a;->A:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcolor/support/v7/app/a;->B:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcolor/support/v7/app/a;->G:Z

    iput p2, p0, Lcolor/support/v7/app/a;->C:I

    iput p3, p0, Lcolor/support/v7/app/a;->D:I

    iput p4, p0, Lcolor/support/v7/app/a;->E:I

    iput p5, p0, Lcolor/support/v7/app/a;->F:I

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcolor/support/v7/app/a;->P:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcolor/support/v7/app/a;->P:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget p1, Lcolor/support/v7/a/a$g;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    iget-object v0, p0, Lcolor/support/v7/app/a;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcolor/support/v7/app/a;->R:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget v0, Lcolor/support/v7/a/a$g;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcolor/support/v7/app/a;->N:Landroid/widget/TextView;

    iget-object p1, p0, Lcolor/support/v7/app/a;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/v7/app/a;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcolor/support/v7/app/a;->K:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    iget p0, p0, Lcolor/support/v7/app/a;->K:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcolor/support/v7/app/a;->L:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    iget-object p0, p0, Lcolor/support/v7/app/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcolor/support/v7/app/a;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget v2, Lcolor/support/v7/a/a$g;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcolor/support/v7/app/a;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcolor/support/v7/app/a;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/v7/app/a;->N:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected b()I
    .locals 2

    iget v0, p0, Lcolor/support/v7/app/a;->Q:I

    if-nez v0, :cond_0

    iget p0, p0, Lcolor/support/v7/app/a;->r:I

    return p0

    :cond_0
    iget v0, p0, Lcolor/support/v7/app/a;->S:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcolor/support/v7/app/a;->Q:I

    return p0

    :cond_1
    iget p0, p0, Lcolor/support/v7/app/a;->r:I

    return p0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcolor/support/v7/app/a;->L:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcolor/support/v7/app/a;->K:I

    iget-object v0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    iget p0, p0, Lcolor/support/v7/app/a;->K:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcolor/support/v7/app/a;->M:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/app/a;->P:Landroid/view/View;

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/a/a$g;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/a;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    iget-object p0, p0, Lcolor/support/v7/app/a;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object p0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcolor/support/v7/app/a;->d:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/v7/app/a;->O:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object p0, p0, Lcolor/support/v7/app/a;->y:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public c()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    return-object p0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/app/a;->A:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcolor/support/v7/app/a;->B:I

    iput-boolean p1, p0, Lcolor/support/v7/app/a;->G:Z

    return-void
.end method

.method protected c(Landroid/view/ViewGroup;)V
    .locals 8

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcolor/support/v7/app/a;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcolor/support/v7/app/a;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    iget-object v5, p0, Lcolor/support/v7/app/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcolor/support/v7/app/a;->z:I

    iget v6, p0, Lcolor/support/v7/app/a;->z:I

    invoke-virtual {v0, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    iget-object v5, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_0
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    iget-object v5, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/a;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcolor/support/v7/app/a;->j:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcolor/support/v7/app/a;->I:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/a;->j:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcolor/support/v7/app/a;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcolor/support/v7/app/a;->I:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcolor/support/v7/app/a;->z:I

    iget v7, p0, Lcolor/support/v7/app/a;->z:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/a;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v5, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcolor/support/v7/app/a;->l:Landroid/widget/Button;

    iget-object v5, p0, Lcolor/support/v7/app/a;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/a;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcolor/support/v7/app/a;->m:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcolor/support/v7/app/a;->J:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v3, p0, Lcolor/support/v7/app/a;->l:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcolor/support/v7/app/a;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/a;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcolor/support/v7/app/a;->z:I

    iget v7, p0, Lcolor/support/v7/app/a;->z:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    iget-object v6, p0, Lcolor/support/v7/app/a;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v3, p0, Lcolor/support/v7/app/a;->l:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iget-object v3, p0, Lcolor/support/v7/app/a;->y:Landroid/content/Context;

    invoke-static {v3}, Lcolor/support/v7/app/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v1, :cond_6

    iget-object v3, p0, Lcolor/support/v7/app/a;->f:Landroid/widget/Button;

    :goto_3
    invoke-direct {p0, v3}, Lcolor/support/v7/app/a;->a(Landroid/widget/Button;)V

    goto :goto_4

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lcolor/support/v7/app/a;->i:Landroid/widget/Button;

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    iget-object v3, p0, Lcolor/support/v7/app/a;->l:Landroid/widget/Button;

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v1, v4

    :goto_5
    if-nez v1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method protected d()V
    .locals 9

    iget-object v0, p0, Lcolor/support/v7/app/a;->b:Landroid/view/Window;

    sget v1, Lcolor/support/v7/a/a$g;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$g;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcolor/support/v7/a/a$g;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcolor/support/v7/a/a$g;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcolor/support/v7/a/a$g;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcolor/support/v7/app/a;->d(Landroid/view/ViewGroup;)V

    sget v4, Lcolor/support/v7/a/a$g;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcolor/support/v7/a/a$g;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcolor/support/v7/a/a$g;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v4, v1}, Lcolor/support/v7/app/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v5, v2}, Lcolor/support/v7/app/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v6, v3}, Lcolor/support/v7/app/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcolor/support/v7/app/a;->b(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v3}, Lcolor/support/v7/app/a;->c(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Lcolor/support/v7/app/a;->a(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    sget v4, Lcolor/support/v7/a/a$g;->textSpacerNoButtons:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v7, :cond_7

    iget-object v4, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    :cond_4
    const/4 v4, 0x0

    iget-object v8, p0, Lcolor/support/v7/app/a;->d:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    if-eqz v8, :cond_6

    :cond_5
    sget v4, Lcolor/support/v7/a/a$g;->titleDividerNoCustom:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    sget v1, Lcolor/support/v7/a/a$g;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    iget-object v1, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    instance-of v1, v1, Lcolor/support/v7/app/a$d;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    check-cast v1, Lcolor/support/v7/app/a$d;

    invoke-virtual {v1, v7, v3}, Lcolor/support/v7/app/a$d;->a(ZZ)V

    :cond_9
    if-nez v0, :cond_c

    iget-object v0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcolor/support/v7/app/a;->o:Landroid/widget/ScrollView;

    :goto_4
    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    const/4 v6, 0x2

    :cond_b
    or-int v1, v7, v6

    const/4 v3, 0x3

    invoke-direct {p0, v2, v0, v1, v3}, Lcolor/support/v7/app/a;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_c
    iget-object v0, p0, Lcolor/support/v7/app/a;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcolor/support/v7/app/a;->p:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcolor/support/v7/app/a;->p:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget p0, p0, Lcolor/support/v7/app/a;->q:I

    const/4 v1, -0x1

    if-le p0, v1, :cond_d

    invoke-virtual {v0, p0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_d
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcolor/support/v7/app/a;->T:I

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcolor/support/v7/app/a;->T:I

    return p0
.end method
