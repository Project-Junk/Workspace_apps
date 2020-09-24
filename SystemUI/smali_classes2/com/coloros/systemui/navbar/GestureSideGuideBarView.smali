.class public Lcom/coloros/systemui/navbar/GestureSideGuideBarView;
.super Landroid/widget/LinearLayout;
.source "GestureSideGuideBarView.java"


# instance fields
.field mGuideView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const v0, 0x7f0a0421

    .line 48
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->mGuideView:Landroid/widget/ImageView;

    return-void
.end method

.method public setDarkColor(Z)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->mGuideView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->init()V

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->mGuideView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const p1, 0x7f080dcb

    goto :goto_0

    :cond_1
    const p1, 0x7f080dca

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method
