.class public final Lcom/coloros/settings/feature/display/zoom/a;
.super Lcom/color/widget/ColorPagerAdapter;
.source "ColorPreviewPagerAdapter.java"


# static fields
.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field private e:[Landroid/widget/FrameLayout;

.field private f:Z

.field private g:[[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/zoom/a;->c:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/zoom/a;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
    .locals 6

    .line 80
    invoke-direct {p0}, Lcom/color/widget/ColorPagerAdapter;-><init>()V

    .line 81
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/zoom/a;->f:Z

    .line 82
    array-length p2, p3

    new-array p2, p2, [Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    .line 83
    array-length p2, p3

    array-length v0, p4

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const-class v0, Z

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Z

    iput-object p2, p0, Lcom/coloros/settings/feature/display/zoom/a;->g:[[Z

    const/4 p2, 0x0

    move v0, p2

    .line 85
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 86
    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/zoom/a;->f:Z

    if-eqz v1, :cond_0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 87
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 88
    iget-object v2, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v2, p2

    .line 92
    :goto_2
    array-length v3, p4

    if-ge v2, v3, :cond_1

    .line 95
    aget-object v3, p4, v2

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 98
    new-instance v4, Landroid/view/ViewStub;

    invoke-direct {v4, v3}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 99
    aget v3, p3, v1

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 102
    new-instance v3, Lcom/coloros/settings/feature/display/zoom/a$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/coloros/settings/feature/display/zoom/a$1;-><init>(Lcom/coloros/settings/feature/display/zoom/a;II)V

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 111
    iget-object v3, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f0a0498

    .line 1071
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/widget/ColorIconJumpView;

    if-eqz p0, :cond_0

    .line 1073
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/ColorIconJumpView;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 180
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/zoom/a;)[[Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/zoom/a;->g:[[Z

    return-object p0
.end method


# virtual methods
.method public final a(III)V
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-ltz p2, :cond_0

    .line 149
    invoke-virtual {v4, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 150
    iget-object v6, p0, Lcom/coloros/settings/feature/display/zoom/a;->g:[[Z

    aget-object v6, v6, p3

    aget-boolean v6, v6, p2

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    .line 156
    invoke-static {v5, v6}, Lcom/coloros/settings/feature/display/zoom/a;->a(Landroid/view/View;I)V

    .line 162
    :cond_0
    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 163
    iget-object v6, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    if-ne v4, v6, :cond_2

    .line 165
    iget-object v4, p0, Lcom/coloros/settings/feature/display/zoom/a;->g:[[Z

    aget-object v4, v4, p3

    aget-boolean v4, v4, p1

    if-nez v4, :cond_1

    .line 166
    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 169
    :cond_1
    invoke-static {v5, v2}, Lcom/coloros/settings/feature/display/zoom/a;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 171
    :cond_2
    invoke-static {v5, v2}, Lcom/coloros/settings/feature/display/zoom/a;->a(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    array-length v0, v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/a;->e:[Landroid/widget/FrameLayout;

    aget-object p1, p1, p2

    return-object p1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
