.class public Lcom/google/android/setupcompat/template/a;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# static fields
.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final a:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public b:Lcom/google/android/setupcompat/template/FooterButton;

.field public c:Lcom/google/android/setupcompat/template/FooterButton;

.field d:Landroid/content/res/ColorStateList;

.field e:Landroid/content/res/ColorStateList;

.field f:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final g:Lcom/google/android/setupcompat/a/a/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/widget/LinearLayout;

.field private k:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private l:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private m:I

.field private n:I

.field private final o:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final p:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/setupcompat/template/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/google/android/setupcompat/template/a;->d:Landroid/content/res/ColorStateList;

    .line 83
    iput-object v0, p0, Lcom/google/android/setupcompat/template/a;->e:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/a;->q:Z

    .line 95
    new-instance v1, Lcom/google/android/setupcompat/a/a/a;

    invoke-direct {v1}, Lcom/google/android/setupcompat/a/a/a;-><init>()V

    iput-object v1, p0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    .line 146
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 147
    sget v1, Lcom/google/android/setupcompat/b$b;->suc_layout_footer:I

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/google/android/setupcompat/template/a;->i:Landroid/view/ViewStub;

    .line 148
    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 150
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    .line 152
    iget-object p1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin:[I

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 154
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarPaddingVertical:I

    .line 155
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/a;->f:I

    .line 156
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarPaddingTop:I

    iget p3, p0, Lcom/google/android/setupcompat/template/a;->f:I

    .line 157
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/a;->m:I

    .line 159
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarPaddingBottom:I

    iget p3, p0, Lcom/google/android/setupcompat/template/a;->f:I

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/a;->n:I

    .line 162
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarPrimaryFooterBackground:I

    .line 163
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/a;->o:I

    .line 164
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarSecondaryFooterBackground:I

    .line 165
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/a;->p:I

    .line 167
    sget p2, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarPrimaryFooterButton:I

    .line 168
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 169
    sget p3, Lcom/google/android/setupcompat/b$e;->SucFooterBarMixin_sucFooterBarSecondaryFooterButton:I

    .line 170
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 171
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    new-instance p1, Lcom/google/android/setupcompat/template/b;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/android/setupcompat/template/b;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    .line 176
    invoke-virtual {p1, p3}, Lcom/google/android/setupcompat/template/b;->a(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 177
    iget-object p3, p0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    invoke-virtual {p3, v0, v0}, Lcom/google/android/setupcompat/a/a/a;->a(ZZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/b;->a(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 182
    iget-object p1, p0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    invoke-virtual {p1, v0, v0}, Lcom/google/android/setupcompat/a/a/a;->b(ZZ)V

    :cond_1
    return-void
.end method

.method private static a(IF)I
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 688
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/setupcompat/template/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 225
    sget p1, Lcom/google/android/setupcompat/b$c;->suc_button:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterActionButton;

    return-object p0
.end method

.method private a(I)Lcom/google/android/setupcompat/template/FooterButton$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 99
    new-instance v0, Lcom/google/android/setupcompat/template/a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/template/a$1;-><init>(Lcom/google/android/setupcompat/template/a;I)V

    return-object v0
.end method

.method private a(Landroid/widget/Button;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 472
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->s:Lcom/google/android/setupcompat/b/a;

    .line 7221
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->f(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 475
    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/Button;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 530
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private a(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 600
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 601
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 602
    invoke-virtual {p2, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 607
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupcompat/template/a;->k:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupcompat/template/a;->l:I

    if-ne v0, v1, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object p2, v2

    move-object v0, p2

    .line 612
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_4

    .line 613
    invoke-virtual {p1, p2, v2, v0, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 615
    :cond_4
    invoke-virtual {p1, p2, v2, v0, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/widget/Button;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 448
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->u:Lcom/google/android/setupcompat/b/a;

    .line 449
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v0

    .line 450
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->d:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 451
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupcompat/template/a;->d:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 455
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->w:Lcom/google/android/setupcompat/b/a;

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->e:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 458
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupcompat/template/a;->e:Landroid/content/res/ColorStateList;

    .line 462
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 465
    iget-object p2, p0, Lcom/google/android/setupcompat/template/a;->d:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/google/android/setupcompat/template/a;->e:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private a(Landroid/widget/Button;ZI)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x2710
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;Z)V

    .line 436
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/a;->b(Landroid/widget/Button;)V

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/a;->b(Landroid/widget/Button;Z)V

    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/a;->c(Landroid/widget/Button;)V

    .line 440
    invoke-direct {p0, p1, p3}, Lcom/google/android/setupcompat/template/a;->b(Landroid/widget/Button;I)V

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/a;->c(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/setupcompat/template/a;Landroid/widget/Button;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/setupcompat/template/a;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/google/android/setupcompat/template/a;->k:I

    return p0
.end method

.method private static b(I)Lcom/google/android/setupcompat/b/a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 644
    :pswitch_0
    sget-object p0, Lcom/google/android/setupcompat/b/a;->n:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 641
    :pswitch_1
    sget-object p0, Lcom/google/android/setupcompat/b/a;->m:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 638
    :pswitch_2
    sget-object p0, Lcom/google/android/setupcompat/b/a;->l:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 635
    :pswitch_3
    sget-object p0, Lcom/google/android/setupcompat/b/a;->k:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 632
    :pswitch_4
    sget-object p0, Lcom/google/android/setupcompat/b/a;->j:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 629
    :pswitch_5
    sget-object p0, Lcom/google/android/setupcompat/b/a;->i:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 626
    :pswitch_6
    sget-object p0, Lcom/google/android/setupcompat/b/a;->h:Lcom/google/android/setupcompat/b/a;

    goto :goto_0

    .line 623
    :pswitch_7
    sget-object p0, Lcom/google/android/setupcompat/b/a;->g:Lcom/google/android/setupcompat/b/a;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/widget/Button;)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 481
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->f:Lcom/google/android/setupcompat/b/a;

    .line 482
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->c(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 483
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/widget/Button;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 586
    invoke-static {p2}, Lcom/google/android/setupcompat/template/a;->b(I)Lcom/google/android/setupcompat/b/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 588
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/setupcompat/b/b;->b(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 590
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Landroid/widget/Button;Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x2710
    .end annotation

    .line 492
    invoke-static {}, Lcom/google/android/setupcompat/internal/a;->a()Z

    move-result v0

    const-string v1, "Update button background only support on sdk Q or higher"

    .line 491
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 494
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    .line 495
    new-array v3, v2, [I

    if-eqz p2, :cond_0

    .line 497
    iget-object p2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 498
    invoke-static {p2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object p2

    iget-object v4, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v5, Lcom/google/android/setupcompat/b/a;->t:Lcom/google/android/setupcompat/b/a;

    .line 499
    invoke-virtual {p2, v4, v5}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result p2

    goto :goto_0

    .line 501
    :cond_0
    iget-object p2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 502
    invoke-static {p2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object p2

    iget-object v4, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v5, Lcom/google/android/setupcompat/b/a;->v:Lcom/google/android/setupcompat/b/a;

    .line 503
    invoke-virtual {p2, v4, v5}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    .line 507
    iget-object v4, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    new-array v5, v0, [I

    const v6, 0x1010033

    aput v6, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const v5, 0x3e851eb8    # 0.26f

    .line 508
    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 509
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 512
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    new-array v7, v6, [[I

    aput-object v1, v7, v2

    aput-object v3, v7, v0

    new-array v1, v6, [I

    .line 515
    invoke-static {p2, v5}, Lcom/google/android/setupcompat/template/a;->a(IF)I

    move-result v3

    aput v3, v1, v2

    aput p2, v1, v0

    invoke-direct {v4, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 523
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-array v0, v2, [I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 524
    invoke-virtual {p1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 525
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private c()Landroid/view/View;
    .locals 5

    .line 188
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    .line 191
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private c(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 693
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget v2, Lcom/google/android/setupcompat/b$d;->SucPartnerCustomizationButtonBar_Stackable:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 694
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->i:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->i:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 699
    iget-object p1, p0, Lcom/google/android/setupcompat/template/a;->i:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/android/setupcompat/template/FooterButton;)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 5124
    iget v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    .line 414
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/template/a;->a(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v0

    .line 415
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 416
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setId(I)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/template/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setId(I)V

    .line 6089
    :goto_0
    iget-object v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->b:Ljava/lang/CharSequence;

    .line 422
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6158
    iget v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->d:I

    .line 424
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setVisibility(I)V

    .line 7141
    iget-boolean v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->c:Z

    .line 425
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setEnabled(Z)V

    .line 426
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-object v0
.end method

.method private c(Landroid/widget/Button;)V
    .locals 3

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 536
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->q:Lcom/google/android/setupcompat/b/a;

    .line 8221
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->f(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result v0

    .line 538
    invoke-static {p1}, Lcom/google/android/setupcompat/template/a;->d(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method private c(Landroid/widget/Button;Z)V
    .locals 7

    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 550
    invoke-static {p1}, Lcom/google/android/setupcompat/template/a;->e(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 555
    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    if-eqz p2, :cond_1

    .line 559
    iget-object p2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 560
    invoke-static {p2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v4, Lcom/google/android/setupcompat/b/a;->u:Lcom/google/android/setupcompat/b/a;

    .line 561
    invoke-virtual {p2, v2, v4}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result p2

    goto :goto_0

    .line 563
    :cond_1
    iget-object p2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 564
    invoke-static {p2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v4, Lcom/google/android/setupcompat/b/a;->w:Lcom/google/android/setupcompat/b/a;

    .line 565
    invoke-virtual {p2, v2, v4}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result p2

    .line 568
    :goto_0
    iget-object v2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 569
    invoke-static {v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v5, Lcom/google/android/setupcompat/b/a;->r:Lcom/google/android/setupcompat/b/a;

    .line 8262
    invoke-virtual {v2, v4, v5}, Lcom/google/android/setupcompat/b/b;->g(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result v2

    .line 573
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v6, v5, [[I

    aput-object v1, v6, v3

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    aput-object v1, v6, v0

    new-array v1, v5, [I

    .line 576
    invoke-static {p2, v2}, Lcom/google/android/setupcompat/template/a;->a(IF)I

    move-result p2

    aput p2, v1, v3

    aput v3, v1, v0

    invoke-direct {v4, v6, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 577
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/google/android/setupcompat/template/a;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->g()V

    return-void
.end method

.method private static d(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 659
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 660
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 661
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 662
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    .line 663
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 664
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 665
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()Landroid/widget/LinearLayout;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->i:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 202
    sget v0, Lcom/google/android/setupcompat/b$c;->suc_footer_button_bar:I

    invoke-direct {p0, v0}, Lcom/google/android/setupcompat/template/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/google/android/setupcompat/template/a;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->j()V

    .line 209
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 212
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->d:Lcom/google/android/setupcompat/b/a;

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Footer stub is not found in this template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static e(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;
    .locals 2

    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 676
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 677
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 678
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    .line 679
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 680
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private e()Landroid/widget/Button;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/google/android/setupcompat/template/a;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private f()V
    .locals 3

    .line 329
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 330
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->e()Landroid/widget/Button;

    move-result-object v1

    .line 331
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->h()Landroid/widget/Button;

    move-result-object v2

    .line 332
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->c()Landroid/view/View;

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .line 368
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->e()Landroid/widget/Button;

    move-result-object v0

    .line 369
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->h()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 374
    :goto_1
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    goto :goto_2

    .line 375
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/a;->q:Z

    if-eqz v0, :cond_3

    const/16 v3, 0x8

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    :cond_4
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private h()Landroid/widget/Button;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/google/android/setupcompat/template/a;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private static i()I
    .locals 3

    .line 401
    :cond_0
    sget-object v0, Lcom/google/android/setupcompat/template/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 407
    :cond_1
    sget-object v2, Lcom/google/android/setupcompat/template/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method private j()V
    .locals 5

    .line 703
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 711
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->o:Lcom/google/android/setupcompat/b/a;

    .line 9221
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->f(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result v0

    float-to-int v0, v0

    .line 712
    iput v0, p0, Lcom/google/android/setupcompat/template/a;->m:I

    .line 713
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 715
    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/b/a;->p:Lcom/google/android/setupcompat/b/a;

    .line 10221
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->f(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result v0

    float-to-int v0, v0

    .line 716
    iput v0, p0, Lcom/google/android/setupcompat/template/a;->n:I

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    .line 719
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/setupcompat/template/a;->m:I

    iget-object v3, p0, Lcom/google/android/setupcompat/template/a;->j:Landroid/widget/LinearLayout;

    .line 721
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/google/android/setupcompat/template/a;->n:I

    .line 718
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 4

    .line 230
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1124
    iget v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    if-eqz v1, :cond_0

    .line 233
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    sget v1, Lcom/google/android/setupcompat/b$d;->SucPartnerCustomizationButton_Primary:I

    .line 1212
    iput v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    .line 239
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 240
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v3, Lcom/google/android/setupcompat/b/a;->t:Lcom/google/android/setupcompat/b/a;

    .line 241
    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v1

    if-nez v1, :cond_2

    .line 243
    sget v1, Lcom/google/android/setupcompat/b$d;->SucPartnerCustomizationButton_Secondary:I

    .line 2212
    iput v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    .line 246
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/a;->c(Lcom/google/android/setupcompat/template/FooterButton;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/a;->k:I

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->g()V

    .line 251
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 3118
    iget v2, p1, Lcom/google/android/setupcompat/template/FooterButton;->a:I

    .line 253
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;ZI)V

    goto :goto_0

    .line 256
    :cond_3
    iget v0, p0, Lcom/google/android/setupcompat/template/a;->o:I

    if-eqz v0, :cond_4

    .line 257
    invoke-static {v1, v0}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;I)V

    .line 263
    :cond_4
    :goto_0
    iget v0, p0, Lcom/google/android/setupcompat/template/a;->k:I

    invoke-direct {p0, v0}, Lcom/google/android/setupcompat/template/a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->a(Lcom/google/android/setupcompat/template/FooterButton$b;)V

    .line 264
    iput-object p1, p0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    .line 268
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->f()V

    return-void
.end method

.method public final a()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->e()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->e()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 4

    .line 288
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3124
    iget v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    if-eqz v1, :cond_0

    .line 291
    iget-boolean v1, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    sget v1, Lcom/google/android/setupcompat/b$d;->SucPartnerCustomizationButton_Secondary:I

    .line 3212
    iput v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    .line 295
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupcompat/template/a;->h:Landroid/content/Context;

    sget-object v3, Lcom/google/android/setupcompat/b/a;->v:Lcom/google/android/setupcompat/b/a;

    .line 296
    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v1

    .line 300
    iget-boolean v2, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 301
    sget v1, Lcom/google/android/setupcompat/b$d;->SucPartnerCustomizationButton_Primary:I

    .line 4212
    iput v1, p1, Lcom/google/android/setupcompat/template/FooterButton;->e:I

    .line 304
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/template/a;->c(Lcom/google/android/setupcompat/template/FooterButton;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/a;->l:I

    .line 306
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/a;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 5118
    iget v2, p1, Lcom/google/android/setupcompat/template/FooterButton;->a:I

    .line 310
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;ZI)V

    goto :goto_0

    .line 313
    :cond_3
    iget v0, p0, Lcom/google/android/setupcompat/template/a;->p:I

    if-eqz v0, :cond_4

    .line 314
    invoke-static {v1, v0}, Lcom/google/android/setupcompat/template/a;->a(Landroid/widget/Button;I)V

    .line 320
    :cond_4
    :goto_0
    iget v0, p0, Lcom/google/android/setupcompat/template/a;->l:I

    invoke-direct {p0, v0}, Lcom/google/android/setupcompat/template/a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->a(Lcom/google/android/setupcompat/template/FooterButton$b;)V

    .line 321
    iput-object p1, p0, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    .line 325
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->f()V

    return-void
.end method

.method public final b()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 395
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->h()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/a;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
