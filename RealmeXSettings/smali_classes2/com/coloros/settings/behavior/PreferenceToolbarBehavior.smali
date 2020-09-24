.class public Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "PreferenceToolbarBehavior.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcolor/support/design/widget/ColorAppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I

.field private g:[I

.field private h:I

.field private i:Landroid/view/ViewGroup$LayoutParams;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Landroid/content/res/Resources;

.field private u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

.field private v:Landroid/view/View;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->g:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 46
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->g:[I

    .line 1076
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->t:Landroid/content/res/Resources;

    .line 1077
    iget-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->t:Landroid/content/res/Resources;

    const v0, 0x7f07028d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->j:I

    .line 1078
    iget-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->t:Landroid/content/res/Resources;

    const p2, 0x7f0703ea

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->m:I

    .line 1079
    iget-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->t:Landroid/content/res/Resources;

    const p2, 0x7f070358

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->p:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 146
    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    .line 148
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    .line 159
    :cond_3
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    .line 160
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->g:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 161
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->g:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    .line 162
    iput v2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    .line 165
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    if-eqz v1, :cond_6

    .line 166
    invoke-static {v1}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->a(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    if-ge v0, v1, :cond_4

    .line 167
    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    invoke-static {v1}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;->b(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 170
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    iget v3, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->w:I

    if-gt v1, v3, :cond_6

    :cond_5
    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    if-ge v0, v1, :cond_6

    .line 171
    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    .line 177
    :cond_6
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->l:I

    if-ge v0, v1, :cond_7

    .line 178
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->m:I

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    goto :goto_2

    .line 179
    :cond_7
    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->k:I

    if-le v0, v1, :cond_8

    .line 180
    iput v2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    goto :goto_2

    :cond_8
    sub-int/2addr v1, v0

    .line 183
    iput v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    .line 185
    :goto_2
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->f:I

    .line 186
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    .line 187
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->f:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->r:F

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a:Landroid/view/View;

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->r:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 191
    :cond_9
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->n:I

    if-ge v0, v1, :cond_a

    .line 192
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->p:I

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    goto :goto_3

    .line 193
    :cond_a
    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->o:I

    if-le v0, v1, :cond_b

    .line 194
    iput v2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    goto :goto_3

    .line 197
    :cond_b
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->v:Landroid/view/View;

    if-nez v1, :cond_c

    .line 198
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->c:Landroid/view/View;

    iput-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->v:Landroid/view/View;

    .line 199
    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->w:I

    .line 201
    :cond_c
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->o:I

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    .line 203
    :goto_3
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->e:I

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->f:I

    .line 204
    iget v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->f:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->s:F

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->i:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->s:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    iget-object v1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;IIII)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a()V

    return-void
.end method

.method public static synthetic lambda$fH1F1JjJdBP7qWO8xLaJN1nIpak(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
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

    .line 35
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    .line 2086
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p6

    .line 2087
    :goto_0
    instance-of p3, p4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_2

    .line 2088
    iget-object p3, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    if-eqz p3, :cond_1

    .line 2089
    move-object p5, p4

    check-cast p5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5, p3}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2091
    :cond_1
    new-instance p3, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    invoke-direct {p3, p0, p6}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;-><init>(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;B)V

    iput-object p3, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    .line 2092
    move-object p3, p4

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p5, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    if-eqz p1, :cond_5

    .line 2096
    iget p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->k:I

    if-gtz p1, :cond_3

    .line 2097
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->k:I

    .line 2098
    iput-object p4, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->b:Landroid/view/View;

    const p1, 0x7f0a020e

    .line 2099
    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a:Landroid/view/View;

    .line 2101
    iget-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 2104
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->q:I

    .line 2105
    iget-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->i:Landroid/view/ViewGroup$LayoutParams;

    .line 2106
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->h:I

    .line 2107
    iget p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->k:I

    iget p2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->m:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->l:I

    .line 2108
    iget-object p2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->t:Landroid/content/res/Resources;

    const p3, 0x7f070359

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->o:I

    .line 2109
    iget p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->o:I

    iget p2, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->p:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->n:I

    .line 2111
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_4

    .line 2112
    new-instance p1, Lcom/coloros/settings/behavior/-$$Lambda$PreferenceToolbarBehavior$fH1F1JjJdBP7qWO8xLaJN1nIpak;

    invoke-direct {p1, p0}, Lcom/coloros/settings/behavior/-$$Lambda$PreferenceToolbarBehavior$fH1F1JjJdBP7qWO8xLaJN1nIpak;-><init>(Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    .line 2113
    :cond_4
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_5

    .line 2114
    check-cast p4, Landroid/widget/AbsListView;

    .line 2115
    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_5
    :goto_1
    return p6
.end method

.method public synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
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

    .line 35
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 1123
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1124
    instance-of p1, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    if-eqz p1, :cond_0

    .line 1125
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 1126
    iput-object p1, p0, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;->u:Lcom/coloros/settings/behavior/PreferenceToolbarBehavior$a;

    :cond_0
    return-void
.end method
