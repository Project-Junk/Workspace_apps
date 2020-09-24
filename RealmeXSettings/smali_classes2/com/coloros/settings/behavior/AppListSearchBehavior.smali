.class public Lcom/coloros/settings/behavior/AppListSearchBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "AppListSearchBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/behavior/AppListSearchBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcolor/support/design/widget/ColorAppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:[I

.field private X:Lcom/facebook/rebound/SpringSystem;

.field private Y:Lcom/facebook/rebound/Spring;

.field private Z:Z

.field public a:I

.field private aa:Lcom/coloros/settings/behavior/AppListSearchBehavior$a;

.field private ab:Landroid/content/res/Resources;

.field private ac:Z

.field private ad:I

.field private ae:I

.field private af:Z

.field public b:Z

.field private c:Landroid/view/View;

.field private d:I

.field private e:Lcolor/support/v7/widget/Toolbar;

.field private f:Landroid/view/View;

.field private g:Lcom/color/support/widget/ColorSearchViewAnimate;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout$LayoutParams;

.field private l:Landroid/view/ViewGroup$LayoutParams;

.field private m:Landroid/widget/LinearLayout$LayoutParams;

.field private n:I

.field private o:I

.field private p:Landroid/content/Context;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->A:I

    const/4 v0, 0x2

    .line 98
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->W:[I

    .line 99
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->X:Lcom/facebook/rebound/SpringSystem;

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->X:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Z:Z

    .line 107
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->A:I

    const/4 p2, 0x2

    .line 98
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->W:[I

    .line 99
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->X:Lcom/facebook/rebound/SpringSystem;

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->X:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Z:Z

    .line 107
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b:Z

    .line 1119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    .line 1120
    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->p:Landroid/content/Context;

    .line 1121
    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v1, 0x7f07028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->w:I

    .line 1122
    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v1, 0x7f070613

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->o:I

    .line 1123
    iget v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->o:I

    div-int/2addr v0, p2

    iput v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->x:I

    .line 1124
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f07072f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->I:I

    .line 1125
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f0705e9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->J:I

    .line 1126
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f07071c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->z:I

    .line 1127
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f0703ea

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->F:I

    .line 1128
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f070358

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->u:I

    .line 1129
    new-instance p2, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/coloros/settings/behavior/AppListSearchBehavior$a;-><init>(Lcom/coloros/settings/behavior/AppListSearchBehavior;B)V

    iput-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->aa:Lcom/coloros/settings/behavior/AppListSearchBehavior$a;

    .line 1130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06013b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    .line 1131
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f0700e1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ae:I

    .line 1132
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f050063

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ac:Z

    .line 1133
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ab:Landroid/content/res/Resources;

    const v0, 0x7f0700e3

    .line 1134
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ad:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/behavior/AppListSearchBehavior;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->B:I

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/behavior/AppListSearchBehavior;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->B:I

    return p1
.end method

.method private synthetic a(Landroid/view/View;IIII)V
    .locals 6

    .line 168
    iget-boolean p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Z:Z

    if-eqz p1, :cond_17

    .line 2259
    iget-boolean p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b:Z

    if-eqz p1, :cond_17

    .line 2262
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchState()I

    move-result p1

    if-nez p1, :cond_17

    :cond_0
    const/4 p1, 0x0

    .line 2265
    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->f:Landroid/view/View;

    .line 2266
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    instance-of p2, p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 2267
    check-cast p1, Landroid/view/ViewGroup;

    .line 2268
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    move p2, p3

    .line 2269
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_2

    .line 2270
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_1

    .line 2271
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->f:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2277
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->f:Landroid/view/View;

    if-nez p1, :cond_3

    .line 2278
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->f:Landroid/view/View;

    :cond_3
    const/4 p1, 0x2

    .line 2280
    new-array p2, p1, [I

    .line 2281
    iget-object p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->f:Landroid/view/View;

    invoke-virtual {p4, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2282
    iget-boolean p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->af:Z

    const/4 p5, 0x1

    if-eqz p4, :cond_4

    .line 2283
    aget p2, p2, p5

    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ad:I

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->p:Landroid/content/Context;

    invoke-static {p4}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result p4

    add-int/2addr p2, p4

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    goto :goto_2

    .line 2285
    :cond_4
    aget p2, p2, p5

    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ad:I

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    .line 2289
    :goto_2
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_b

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->A:I

    if-eqz p2, :cond_b

    .line 2290
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->E:I

    if-ge p2, p5, :cond_5

    .line 2291
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->F:I

    goto :goto_3

    .line 2292
    :cond_5
    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->r:I

    if-le p2, p5, :cond_6

    move p2, p3

    goto :goto_3

    :cond_6
    sub-int p2, p5, p2

    .line 2298
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    .line 2299
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->E:I

    if-le p2, p5, :cond_7

    .line 2300
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    int-to-float p2, p2

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->F:I

    int-to-float p5, p5

    div-float/2addr p2, p5

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Q:F

    .line 2301
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Q:F

    invoke-virtual {p2, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 2303
    :cond_7
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->setAlpha(F)V

    .line 2305
    :goto_4
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->t:I

    if-ge p2, p5, :cond_8

    .line 2306
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->u:I

    goto :goto_5

    .line 2307
    :cond_8
    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->s:I

    if-le p2, p5, :cond_9

    move p2, p3

    goto :goto_5

    :cond_9
    sub-int p2, p5, p2

    .line 2313
    :goto_5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    .line 2314
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->t:I

    if-le p2, p5, :cond_a

    .line 2315
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    int-to-float p2, p2

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->u:I

    int-to-float p5, p5

    div-float/2addr p2, p5

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->R:F

    .line 2316
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->w:I

    int-to-float p5, p5

    iget v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->R:F

    sub-float v0, p4, v0

    mul-float/2addr p5, v0

    float-to-int p5, p5

    iget v0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->w:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->R:F

    sub-float v2, p4, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p5, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2318
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    iget-object p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 2320
    :cond_a
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget p5, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, p5, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2321
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    iget-object p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2325
    :cond_b
    :goto_6
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz p2, :cond_17

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->A:I

    if-nez p2, :cond_17

    .line 2326
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->K:I

    if-ge p2, p5, :cond_c

    .line 2327
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->x:I

    goto :goto_7

    .line 2328
    :cond_c
    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->C:I

    if-le p2, p5, :cond_d

    move p2, p3

    goto :goto_7

    :cond_d
    sub-int p2, p5, p2

    .line 2333
    :goto_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    .line 2334
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    .line 2362
    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->K:I

    if-lt p2, p5, :cond_e

    .line 2363
    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    int-to-float p5, p5

    iget v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->L:I

    int-to-float v0, v0

    div-float/2addr p5, v0

    iput p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->T:F

    goto :goto_8

    .line 2365
    :cond_e
    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->T:F

    .line 2367
    :goto_8
    iget-boolean p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ac:Z

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-eqz p5, :cond_11

    .line 2368
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->T:F

    mul-float/2addr p5, v0

    sub-float p5, p4, p5

    invoke-static {v1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    invoke-virtual {p1, p5}, Lcom/color/support/widget/ColorSearchViewAnimate;->setAlpha(F)V

    .line 2371
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->a:I

    const/16 p5, 0x8

    if-nez p1, :cond_10

    .line 2372
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    move p5, p3

    :goto_9
    invoke-virtual {p1, p5}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    goto :goto_a

    .line 2374
    :cond_10
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1, p5}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    goto :goto_a

    .line 2378
    :cond_11
    iget-object p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->n:I

    sub-int/2addr v3, p1

    iget-object v4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 2379
    invoke-virtual {v4}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->T:F

    sub-float v5, p4, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2380
    iget-object p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->l:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->v:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    sub-float v2, p4, v4

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2381
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget-object p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p5}, Lcom/color/support/widget/ColorSearchViewAnimate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1, p3}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    .line 2385
    :goto_a
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->N:I

    if-le p2, p1, :cond_13

    .line 2386
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->I:I

    if-le p1, p2, :cond_12

    move p1, p2

    :cond_12
    int-to-float p1, p1

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->I:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->S:F

    .line 2387
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->i:Landroid/widget/TextView;

    const p2, 0x3e99999a    # 0.3f

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->S:F

    sub-float p5, p4, p5

    mul-float/2addr p5, p2

    const/high16 p2, 0x43610000    # 225.0f

    mul-float/2addr p5, p2

    float-to-int p2, p5

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    .line 2388
    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result p5

    iget v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 2387
    invoke-static {p2, p5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2389
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->j:Landroid/widget/ImageView;

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->S:F

    sub-float p2, p4, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b

    .line 2391
    :cond_13
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->i:Landroid/widget/TextView;

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    .line 2392
    invoke-static {p5}, Landroid/graphics/Color;->green(I)I

    move-result p5

    iget v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->P:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 2391
    invoke-static {p3, p2, p5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2393
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2336
    :goto_b
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->H:I

    if-ge p1, p2, :cond_14

    .line 2337
    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->J:I

    goto :goto_c

    .line 2338
    :cond_14
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->G:I

    if-le p1, p2, :cond_15

    goto :goto_c

    :cond_15
    sub-int p3, p2, p1

    .line 2344
    :goto_c
    iput p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    .line 2345
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->O:I

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->G:I

    if-le p1, p2, :cond_16

    .line 2346
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->q:I

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingTop()I

    move-result p3

    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->q:I

    iget-object p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p5}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/color/support/widget/ColorSearchViewAnimate;->setPaddingRelative(IIII)V

    .line 2347
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ae:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 2349
    :cond_16
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    int-to-float p1, p1

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->J:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->U:F

    .line 2350
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->q:I

    int-to-float p2, p2

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->U:F

    sub-float p3, p4, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 2351
    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingTop()I

    move-result p3

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->q:I

    int-to-float p5, p5

    iget v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->U:F

    sub-float v0, p4, v0

    mul-float/2addr p5, v0

    float-to-int p5, p5

    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingBottom()I

    move-result v0

    .line 2350
    invoke-virtual {p1, p2, p3, p5, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->setPaddingRelative(IIII)V

    .line 2352
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->d:I

    int-to-float p1, p1

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->J:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->V:F

    .line 2353
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ae:I

    int-to-float p2, p2

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->y:I

    int-to-float p3, p3

    iget p5, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->U:F

    sub-float/2addr p4, p5

    mul-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_17
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/behavior/AppListSearchBehavior;)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/behavior/AppListSearchBehavior;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic lambda$ydRwX26DJV7dce_WW0ZMLn9YDr4(Lcom/coloros/settings/behavior/AppListSearchBehavior;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/behavior/AppListSearchBehavior;->a(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 2148
    iget-boolean p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->b:Z

    const/4 p5, 0x1

    if-nez p3, :cond_0

    return p5

    .line 2151
    :cond_0
    iget-object p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->e:Lcolor/support/v7/widget/Toolbar;

    const/4 p6, 0x0

    if-nez p3, :cond_3

    move p3, p6

    .line 2152
    :goto_0
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2153
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 2154
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->e:Lcolor/support/v7/widget/Toolbar;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2157
    :cond_2
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p3

    .line 2158
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->r:I

    .line 2159
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->r:I

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->F:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->E:I

    .line 2160
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->E:I

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->s:I

    .line 2161
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->s:I

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->u:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->t:I

    .line 2162
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    iget-object p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->aa:Lcom/coloros/settings/behavior/AppListSearchBehavior$a;

    invoke-virtual {p1, p3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 2164
    :cond_3
    iput-object p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    .line 2165
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->af:Z

    .line 2166
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_4

    .line 2167
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    new-instance p3, Lcom/coloros/settings/behavior/-$$Lambda$AppListSearchBehavior$ydRwX26DJV7dce_WW0ZMLn9YDr4;

    invoke-direct {p3, p0}, Lcom/coloros/settings/behavior/-$$Lambda$AppListSearchBehavior$ydRwX26DJV7dce_WW0ZMLn9YDr4;-><init>(Lcom/coloros/settings/behavior/AppListSearchBehavior;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 2173
    :cond_4
    iput p6, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->A:I

    .line 2174
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->A:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-nez p1, :cond_5

    const p1, 0x7f0a05cf

    .line 2175
    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSearchViewAnimate;

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 2176
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz p1, :cond_5

    .line 2177
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->C:I

    .line 2178
    iget p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->C:I

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->o:I

    sub-int p3, p1, p3

    iput p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->D:I

    .line 2180
    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->x:I

    sub-int p4, p1, p3

    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->G:I

    .line 2181
    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->G:I

    iget p6, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->J:I

    sub-int/2addr p4, p6

    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->H:I

    sub-int p4, p1, p3

    .line 2183
    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->K:I

    .line 2184
    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->K:I

    sub-int p6, p1, p4

    iput p6, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->L:I

    .line 2185
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p3

    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->M:I

    .line 2187
    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->I:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->N:I

    .line 2188
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    const p3, 0x7f0a0089

    invoke-virtual {p1, p3}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->i:Landroid/widget/TextView;

    .line 2189
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->v:I

    .line 2190
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    const p3, 0x7f0a008b

    invoke-virtual {p1, p3}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->j:Landroid/widget/ImageView;

    .line 2191
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 2192
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->l:Landroid/view/ViewGroup$LayoutParams;

    .line 2193
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->q:I

    .line 2194
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->y:I

    .line 2195
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->n:I

    :cond_5
    const p1, 0x7f0a020e

    .line 2198
    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    .line 2199
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->m:Landroid/widget/LinearLayout$LayoutParams;

    return p5
.end method

.method public synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1207
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    .line 1208
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 1209
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->n:I

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->y:I

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_4

    :cond_0
    const/4 p1, 0x0

    .line 1214
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->c:Landroid/view/View;

    instance-of p3, p2, Landroid/view/ViewGroup;

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 1215
    check-cast p2, Landroid/view/ViewGroup;

    .line 1216
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-lez p3, :cond_2

    move p3, p4

    .line 1217
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 1218
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1219
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 1226
    iget-boolean p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Z:Z

    if-eqz p2, :cond_4

    .line 1227
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->W:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1228
    iget-object p1, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->W:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->ad:I

    sub-int/2addr p1, p2

    .line 1229
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->C:I

    if-ge p1, p2, :cond_4

    .line 1230
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->n:I

    iget-object v0, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingTop()I

    move-result v0

    add-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    const-wide/16 v0, 0x0

    if-lt p2, p3, :cond_3

    .line 1231
    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->B:I

    .line 1232
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    invoke-virtual {p2, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 1233
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->C:I

    sub-int/2addr p1, p3

    int-to-double p3, p1

    invoke-virtual {p2, p3, p4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void

    .line 1234
    :cond_3
    iget p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->D:I

    if-le p1, p2, :cond_4

    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->n:I

    iget-object v2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->g:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 1235
    invoke-virtual {v2}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingTop()I

    move-result v2

    add-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x2

    if-ge p2, p3, :cond_4

    .line 1236
    iput p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->B:I

    .line 1237
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    invoke-virtual {p2, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 1238
    iget-object p2, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->Y:Lcom/facebook/rebound/Spring;

    iget p3, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->C:I

    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->n:I

    sub-int/2addr p3, p4

    iget p4, p0, Lcom/coloros/settings/behavior/AppListSearchBehavior;->y:I

    sub-int/2addr p3, p4

    sub-int/2addr p1, p3

    int-to-double p3, p1

    invoke-virtual {p2, p3, p4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_4
    return-void
.end method
