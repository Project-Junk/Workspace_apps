.class public Lcom/coloros/systemui/statusbar/widget/NoSimView;
.super Landroid/widget/LinearLayout;
.source "NoSimView.java"


# static fields
.field public static final SHONE_NONE:I = 0x4

.field public static final SHOW_BOTH:I = 0x3

.field public static final SHOW_SIM1:I = 0x1

.field public static final SHOW_SIM2:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSim1NoSimRes:Landroid/widget/ImageView;

.field private mSim1Number:Landroid/widget/ImageView;

.field private mSim1Slot:Landroid/widget/FrameLayout;

.field private mSim2NoSimRes:Landroid/widget/ImageView;

.field private mSim2Number:Landroid/widget/ImageView;

.field private mSim2Slot:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 103
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->updateView()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0537

    .line 59
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Number:Landroid/widget/ImageView;

    const v0, 0x7f0a03e6

    .line 60
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1NoSimRes:Landroid/widget/ImageView;

    const v0, 0x7f0a0538

    .line 61
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Number:Landroid/widget/ImageView;

    const v0, 0x7f0a03e7

    .line 62
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2NoSimRes:Landroid/widget/ImageView;

    const v0, 0x7f0a0534

    .line 63
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Slot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0535

    .line 64
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Slot:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 1

    .line 91
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Number:Landroid/widget/ImageView;

    .line 92
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 91
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->setTint(Landroid/widget/ImageView;I)V

    .line 93
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1NoSimRes:Landroid/widget/ImageView;

    .line 94
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 93
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->setTint(Landroid/widget/ImageView;I)V

    .line 95
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Number:Landroid/widget/ImageView;

    .line 96
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 95
    invoke-direct {p0, p2, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->setTint(Landroid/widget/ImageView;I)V

    .line 97
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2NoSimRes:Landroid/widget/ImageView;

    .line 98
    invoke-static {p3, p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public updateView()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCuSignalViewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Number:Landroid/widget/ImageView;

    const v1, 0x7f080f18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1NoSimRes:Landroid/widget/ImageView;

    const v1, 0x7f080f13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Number:Landroid/widget/ImageView;

    const v2, 0x7f080f19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2NoSimRes:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1NoSimRes:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mContext:Landroid/content/Context;

    const v2, 0x7f080f23

    invoke-static {v1, v2}, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->applyTintDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2NoSimRes:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->applyTintDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public updateVisible(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Slot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Slot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Slot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Slot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim2Slot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/NoSimView;->mSim1Slot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
