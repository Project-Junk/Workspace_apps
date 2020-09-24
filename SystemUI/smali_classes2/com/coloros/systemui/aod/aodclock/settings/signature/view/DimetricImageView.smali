.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/DimetricImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "DimetricImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 37
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 39
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 41
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 45
    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 49
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/DimetricImageView;->setMeasuredDimension(II)V

    return-void
.end method
