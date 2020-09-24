.class public Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HomepageHeadScaleWithSearchBhv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;
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
.field private A:F

.field private B:F

.field private C:I

.field private D:[I

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

.field private Q:I

.field private R:I

.field private S:I

.field private T:Landroid/content/res/Resources;

.field private U:Lcom/facebook/rebound/Spring;

.field private V:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;

.field private W:I

.field private X:Landroid/view/ViewGroup$LayoutParams;

.field private Y:I

.field private Z:Z

.field public a:I

.field private aa:Z

.field private ab:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcolor/support/design/widget/ColorAppBarLayout;

.field private g:Lcolor/support/v7/widget/Toolbar;

.field private h:Landroid/view/View;

.field private i:Landroidx/recyclerview/widget/RecyclerView;

.field private j:Landroid/view/View;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/widget/LinearLayout$LayoutParams;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Landroid/content/Context;

.field private v:I

.field private w:Landroid/view/ViewGroup$LayoutParams;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c:I

    .line 50
    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d:I

    .line 51
    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->e:I

    const/4 v1, 0x2

    .line 76
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->D:[I

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->U:Lcom/facebook/rebound/Spring;

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Z:Z

    .line 106
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->ab:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 112
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c:I

    .line 50
    iput p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d:I

    .line 51
    iput p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->e:I

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->D:[I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->U:Lcom/facebook/rebound/Spring;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Z:Z

    .line 106
    iput-boolean p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->ab:Z

    .line 1117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    .line 1118
    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->u:Landroid/content/Context;

    .line 1119
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v1, 0x7f0705e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->F:I

    .line 1120
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v1, 0x7f0705d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->G:I

    .line 1121
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v1, 0x7f070613

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->v:I

    .line 1123
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->aa:Z

    .line 1124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Q:I

    .line 1125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->R:I

    .line 1126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->S:I

    .line 1128
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->p:I

    .line 1129
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v0, 0x7f070214

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->n:I

    .line 1130
    new-instance p1, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;-><init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;B)V

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->V:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->W:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private a()Lcom/facebook/rebound/Spring;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->U:Lcom/facebook/rebound/Spring;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->U:Lcom/facebook/rebound/Spring;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->U:Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method private synthetic a(Landroid/view/View;IIII)V
    .locals 0

    .line 159
    iget-boolean p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Z:Z

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 10

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->h:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    .line 279
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->h:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->h:Landroid/view/View;

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->h:Landroid/view/View;

    :cond_2
    const/4 v0, 0x2

    .line 292
    new-array v0, v0, [I

    .line 293
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    .line 294
    aget v0, v0, v1

    .line 296
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d:I

    if-ge v0, v1, :cond_3

    .line 297
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->E:I

    goto :goto_2

    .line 298
    :cond_3
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    if-le v0, v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    .line 305
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    .line 307
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_5

    .line 308
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    int-to-float v1, v1

    iget v4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->E:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->x:F

    goto :goto_3

    .line 310
    :cond_5
    iput v3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->x:F

    .line 313
    :goto_3
    iget-boolean v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->aa:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 314
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->x:F

    mul-float/2addr v6, v5

    sub-float v5, v3, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 315
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 316
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->m:I

    if-eq v5, v6, :cond_6

    .line 317
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    iget-object v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 321
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Y:I

    if-eq v5, v6, :cond_9

    .line 322
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    iget-object v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 1408
    :cond_7
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->u:Landroid/content/Context;

    invoke-static {v1}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1409
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->k:Landroid/graphics/drawable/Drawable;

    instance-of v5, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_8

    .line 1410
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v5, 0x42180000    # 38.0f

    const/high16 v6, 0x41500000    # 13.0f

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->x:F

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    float-to-int v5, v7

    const/16 v6, 0xff

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2400
    :cond_8
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->l:Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->p:I

    int-to-float v6, v5

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->m:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->x:F

    sub-float v8, v3, v7

    mul-float/2addr v5, v8

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2401
    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->n:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->o:I

    int-to-float v6, v6

    sub-float v7, v3, v7

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2403
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->X:Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->p:I

    int-to-float v6, v5

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Y:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->x:F

    sub-float v7, v3, v7

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2404
    iget-object v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    iget-boolean v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->aa:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_a

    move v5, v6

    goto :goto_5

    :cond_a
    move v5, v2

    :goto_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->J:I

    if-lt v0, v1, :cond_b

    .line 333
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    int-to-float v1, v1

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->G:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->B:F

    .line 334
    invoke-direct {p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c()V

    goto :goto_6

    .line 336
    :cond_b
    iput v3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->B:F

    .line 337
    invoke-direct {p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c()V

    .line 340
    :goto_6
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->N:I

    if-ge v0, v1, :cond_c

    .line 341
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->P:I

    goto :goto_7

    .line 342
    :cond_c
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->O:I

    if-le v0, v1, :cond_d

    move v1, v2

    goto :goto_7

    :cond_d
    sub-int/2addr v1, v0

    .line 349
    :goto_7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    .line 351
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->N:I

    if-lt v0, v1, :cond_f

    .line 352
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    int-to-float v1, v1

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->P:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->z:F

    .line 353
    iget-boolean v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->aa:Z

    if-eqz v1, :cond_e

    .line 354
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->t:I

    int-to-float v7, v7

    iget v8, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->z:F

    sub-float v8, v3, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_8

    .line 356
    :cond_e
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->w:Landroid/view/ViewGroup$LayoutParams;

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->z:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_8

    .line 359
    :cond_f
    iput v3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->z:F

    .line 360
    iget-boolean v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->aa:Z

    if-eqz v1, :cond_10

    .line 361
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    iget-object v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v1, v5, v2, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_8

    .line 363
    :cond_10
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->w:Landroid/view/ViewGroup$LayoutParams;

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->z:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 367
    :goto_8
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->H:I

    if-le v0, v1, :cond_11

    .line 368
    iput v4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->A:F

    .line 369
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 370
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a:I

    iget-object v9, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_9

    .line 372
    :cond_11
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->K:I

    if-le v1, v5, :cond_12

    move v1, v5

    :cond_12
    int-to-float v1, v1

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->K:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->A:F

    .line 373
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->A:F

    sub-float v5, v3, v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 374
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a:I

    int-to-float v5, v5

    iget v7, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->A:F

    sub-float v7, v3, v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a:I

    int-to-float v8, v8

    iget v9, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->A:F

    sub-float v9, v3, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 377
    :goto_9
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->aa:Z

    if-eqz v5, :cond_13

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_13

    move v2, v6

    :cond_13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->L:I

    if-le v0, v1, :cond_14

    .line 380
    iput v4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->y:F

    .line 381
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->g:Lcolor/support/v7/widget/Toolbar;

    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Q:I

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    return-void

    .line 383
    :cond_14
    iget v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    iget v2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    .line 384
    iget v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->M:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->y:F

    .line 385
    iget v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->y:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->y:F

    .line 386
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->g:Lcolor/support/v7/widget/Toolbar;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->y:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->R:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->R:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->R:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method private b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;)V
    .locals 1

    .line 215
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getTotalScaleRange()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->e:I

    .line 216
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->u:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f:Lcolor/support/design/widget/ColorAppBarLayout;

    const p2, 0x7f0a070b

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->g:Lcolor/support/v7/widget/Toolbar;

    .line 221
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f:Lcolor/support/design/widget/ColorAppBarLayout;

    const p2, 0x7f0a05ba

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    .line 222
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a:I

    .line 223
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->m:I

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->l:Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->o:I

    .line 227
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    const p2, 0x7f0a0089

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    .line 228
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->k:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Y:I

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->X:Landroid/view/ViewGroup$LayoutParams;

    .line 232
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->j:Landroid/view/View;

    const p2, 0x7f0a008b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->r:Landroid/widget/ImageView;

    .line 234
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorAppBarLayout;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    .line 235
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->v:I

    sub-int v0, p1, p2

    iput v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c:I

    .line 237
    div-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    iput p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->H:I

    .line 238
    iget-object p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v0, 0x7f0705e8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->I:I

    .line 239
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->H:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->I:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->K:I

    .line 241
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->v:I

    div-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    iput p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->O:I

    .line 242
    iget-object p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v0, 0x7f070782

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->N:I

    .line 243
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->O:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->N:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->P:I

    .line 245
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->G:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->J:I

    .line 246
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c:I

    iget-object p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->T:Landroid/content/res/Resources;

    const v0, 0x7f070747

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->L:I

    .line 247
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->I:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->N:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->M:I

    .line 249
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->c:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->F:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d:I

    .line 250
    iget p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    iget p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->E:I

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->f:Lcolor/support/design/widget/ColorAppBarLayout;

    const p2, 0x7f0a070c

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    .line 253
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->t:I

    .line 254
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->w:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->Z:Z

    return p0
.end method

.method private c()V
    .locals 7

    .line 392
    iget-object v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->B:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->S:I

    .line 393
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->S:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->S:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 392
    invoke-static {v1, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    iget v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->B:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    const/16 v1, 0xff

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    .line 396
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)[I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->D:[I

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->v:I

    return p0
.end method

.method static synthetic f(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)Lcom/facebook/rebound/Spring;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a()Lcom/facebook/rebound/Spring;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->N:I

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b()V

    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->W:I

    return p0
.end method

.method public static synthetic lambda$zoduM6fWJ80239BCDPDXhDRzqvQ(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;)V
    .locals 1

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->ab:Z

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;)V

    return-void
.end method

.method public synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 44
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_1

    .line 3146
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->hasScaleableChildren()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 3147
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getHeight()I

    move-result p3

    if-le p5, p3, :cond_0

    iget-boolean p3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->ab:Z

    if-eqz p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, p6

    :goto_0
    if-eqz p3, :cond_6

    .line 3150
    iget p3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->C:I

    if-lez p3, :cond_2

    iget p3, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->e:I

    if-gtz p3, :cond_3

    .line 3151
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;)V

    .line 3154
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_5

    .line 3155
    check-cast p4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 3156
    invoke-direct {p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->V:Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$a;

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 3157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-le p1, p2, :cond_4

    .line 3158
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/coloros/settings/behavior/-$$Lambda$HomepageHeadScaleWithSearchBhv$zoduM6fWJ80239BCDPDXhDRzqvQ;

    invoke-direct {p2, p0}, Lcom/coloros/settings/behavior/-$$Lambda$HomepageHeadScaleWithSearchBhv$zoduM6fWJ80239BCDPDXhDRzqvQ;-><init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 3164
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv$1;-><init>(Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3203
    :cond_5
    iput-boolean p6, p0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->ab:Z

    :cond_6
    return p6
.end method
