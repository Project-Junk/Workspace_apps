.class public Lcom/coloros/settings/behavior/SmallTabBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SmallTabBehavior.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcolor/support/design/widget/ColorAppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private c:Landroid/view/View;

.field private d:I

.field private e:Lcolor/support/design/widget/ColorTabLayout;

.field private f:Z

.field private g:Landroid/view/View;

.field private h:I

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/widget/FrameLayout$LayoutParams;

.field private q:F

.field private r:F

.field private s:Landroid/content/res/Resources;

.field private t:[I

.field private u:Landroidx/viewpager/widget/PagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->f:Z

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->t:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->f:Z

    const/4 p2, 0x2

    .line 57
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->t:[I

    .line 1070
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->s:Landroid/content/res/Resources;

    .line 1071
    iget-object p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->s:Landroid/content/res/Resources;

    const v0, 0x7f0703ea

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->n:I

    .line 1072
    iget-object p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->s:Landroid/content/res/Resources;

    const v0, 0x7f070358

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->m:I

    .line 1073
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07028d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->o:I

    return-void
.end method

.method private a()V
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->t:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->g:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 133
    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    .line 135
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->g:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->g:Landroid/view/View;

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->g:Landroid/view/View;

    :cond_2
    const/4 v0, 0x2

    .line 146
    new-array v0, v0, [I

    .line 147
    iget-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 148
    aget v0, v0, v1

    .line 151
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->j:I

    if-ge v0, v1, :cond_3

    .line 152
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->n:I

    goto :goto_2

    .line 153
    :cond_3
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->a:I

    if-le v0, v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    .line 159
    :goto_2
    iput v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->d:I

    .line 160
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->j:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_5

    .line 161
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->d:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->n:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->r:F

    .line 162
    iget-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    iget v4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->r:F

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 166
    :goto_3
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->l:I

    if-ge v0, v1, :cond_6

    .line 167
    iget v2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->m:I

    goto :goto_4

    .line 168
    :cond_6
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->k:I

    if-le v0, v1, :cond_7

    goto :goto_4

    :cond_7
    sub-int v2, v1, v0

    .line 174
    :goto_4
    iput v2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->d:I

    .line 175
    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->k:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->q:F

    .line 177
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->o:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->o:I

    iget-object v4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 180
    :cond_8
    iget v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->d:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->q:F

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->q:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->o:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->q:F

    sub-float/2addr v3, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    iget-object v0, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/behavior/SmallTabBehavior;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/settings/behavior/SmallTabBehavior;->a()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/coloros/settings/behavior/SmallTabBehavior;->a()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 3

    .line 35
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 1078
    iget-object p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->e:Lcolor/support/design/widget/ColorTabLayout;

    const/4 p5, 0x2

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_2

    move p3, p6

    .line 1079
    :goto_0
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 1080
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorTabLayout;

    iput-object v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->e:Lcolor/support/design/widget/ColorTabLayout;

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const p3, 0x7f0a04a9

    .line 1085
    invoke-virtual {p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->b:Landroidx/viewpager/widget/ViewPager;

    .line 1086
    iput-object p4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->c:Landroid/view/View;

    .line 1087
    iget-object p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->u:Landroidx/viewpager/widget/PagerAdapter;

    .line 1088
    new-array p3, p5, [I

    .line 1089
    invoke-virtual {p2, p3}, Lcolor/support/design/widget/ColorAppBarLayout;->getLocationOnScreen([I)V

    .line 1090
    aget p3, p3, v0

    iput p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->h:I

    .line 1091
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p3

    iput p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->a:I

    .line 1092
    iget p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->a:I

    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->n:I

    sub-int/2addr p3, v1

    iput p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->j:I

    .line 1093
    iget p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->j:I

    iput p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->k:I

    .line 1094
    iget p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->k:I

    iget v1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->m:I

    sub-int/2addr p3, v1

    iput p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->l:I

    :cond_2
    const p3, 0x7f0a020e

    .line 1096
    invoke-virtual {p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    .line 1097
    iget-object p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->p:Landroid/widget/FrameLayout$LayoutParams;

    .line 1098
    iget-object p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->e:Lcolor/support/design/widget/ColorTabLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1099
    iput-boolean p6, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->f:Z

    return p6

    .line 1102
    :cond_3
    iput-object p4, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->c:Landroid/view/View;

    .line 1104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_4

    .line 1105
    new-instance p1, Lcom/coloros/settings/behavior/SmallTabBehavior$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/behavior/SmallTabBehavior$1;-><init>(Lcom/coloros/settings/behavior/SmallTabBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    .line 1111
    :cond_4
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_5

    .line 1112
    check-cast p4, Landroid/widget/AbsListView;

    .line 1113
    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1210
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->c:Landroid/view/View;

    if-nez p1, :cond_6

    :goto_2
    move p1, v0

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    .line 2189
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_8

    .line 2190
    move-object p4, p1

    check-cast p4, Landroid/view/ViewGroup;

    .line 2191
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_8

    move v1, p6

    .line 2192
    :goto_3
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2193
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 2194
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez p3, :cond_9

    goto :goto_5

    :cond_9
    move-object p1, p3

    .line 2203
    :goto_5
    new-array p3, p5, [I

    .line 2204
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2205
    aget p1, p3, v0

    iget p3, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->h:I

    sub-int/2addr p1, p3

    .line 1213
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p2

    if-ge p1, p2, :cond_a

    goto :goto_2

    :cond_a
    move p1, p6

    :goto_6
    if-nez p1, :cond_b

    .line 1115
    iget p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->d:I

    if-eqz p1, :cond_c

    :cond_b
    move p6, v0

    :cond_c
    iput-boolean p6, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->f:Z

    .line 1116
    iget-boolean p1, p0, Lcom/coloros/settings/behavior/SmallTabBehavior;->f:Z

    return p1
.end method
