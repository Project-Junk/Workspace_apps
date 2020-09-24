.class public Lcom/color/support/preference/SecondToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SecondToolbarBehavior.java"

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
.field public a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:[I

.field private i:I

.field private j:Landroid/view/ViewGroup$LayoutParams;

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

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 47
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    .line 1086
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    .line 1087
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_margin_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->k:I

    .line 1088
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->preference_line_alpha_range_change_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    .line 1089
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_width_change_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    .line 1090
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget p2, Lcolor/support/v7/appcompat/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->u:Z

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 140
    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    .line 142
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 154
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->h:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->e:I

    .line 155
    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    .line 157
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->e:I

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->m:I

    if-ge v0, v1, :cond_3

    .line 158
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_2

    .line 159
    :cond_3
    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    if-le v0, v1, :cond_4

    .line 160
    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v0

    .line 163
    iput v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    .line 165
    :goto_2
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    .line 166
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 167
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->r:F

    .line 168
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->r:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    :cond_5
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->e:I

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->o:I

    if-ge v0, v1, :cond_6

    .line 172
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_3

    .line 173
    :cond_6
    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->p:I

    if-le v0, v1, :cond_7

    .line 174
    iput v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    goto :goto_3

    :cond_7
    sub-int/2addr v1, v0

    .line 177
    iput v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    .line 179
    :goto_3
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->f:I

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    .line 180
    iget v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->g:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->s:F

    .line 181
    iget-object v0, p0, Lcom/color/support/preference/SecondToolbarBehavior;->j:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/preference/SecondToolbarBehavior;->s:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object v1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/SecondToolbarBehavior;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/color/support/preference/SecondToolbarBehavior;->a()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/color/support/preference/SecondToolbarBehavior;->a()V

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

    .line 40
    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    .line 1096
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

    .line 1097
    :goto_0
    iget-boolean p3, p0, Lcom/color/support/preference/SecondToolbarBehavior;->u:Z

    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    .line 1101
    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    if-gtz p1, :cond_1

    .line 1102
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    .line 1103
    iput-object p4, p0, Lcom/color/support/preference/SecondToolbarBehavior;->c:Landroid/view/View;

    .line 1104
    sget p1, Lcolor/support/v7/appcompat/R$id;->divider_line:I

    invoke-virtual {p2, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    .line 1105
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->a:I

    .line 1106
    iget-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->j:Landroid/view/ViewGroup$LayoutParams;

    .line 1107
    invoke-virtual {p2}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->i:I

    .line 1108
    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->l:I

    iget p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->n:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->m:I

    .line 1109
    iget-object p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->t:Landroid/content/res/Resources;

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->preference_divider_width_start_count_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->p:I

    .line 1110
    iget p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->p:I

    iget p2, p0, Lcom/color/support/preference/SecondToolbarBehavior;->q:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/color/support/preference/SecondToolbarBehavior;->o:I

    .line 1112
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_2

    .line 1113
    new-instance p1, Lcom/color/support/preference/SecondToolbarBehavior$1;

    invoke-direct {p1, p0}, Lcom/color/support/preference/SecondToolbarBehavior$1;-><init>(Lcom/color/support/preference/SecondToolbarBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_1

    .line 1119
    :cond_2
    instance-of p1, p4, Landroid/widget/AbsListView;

    if-eqz p1, :cond_3

    .line 1120
    check-cast p4, Landroid/widget/AbsListView;

    .line 1121
    invoke-virtual {p4, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_3
    :goto_1
    return p6
.end method
