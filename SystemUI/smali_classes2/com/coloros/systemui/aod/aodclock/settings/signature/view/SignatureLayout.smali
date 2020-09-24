.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;
.super Landroid/widget/FrameLayout;
.source "SignatureLayout.java"


# instance fields
.field private mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-direct {p2, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    .line 39
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 41
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 42
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {p0, p2, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 48
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->updateSignature()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public updateSignature()V
    .locals 9

    .line 62
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getSignatureColorByIndex()Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getSignatureTextSize()I

    move-result v3

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->loadTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 67
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getAlignType()I

    move-result v0

    .line 68
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v5, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setText(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setColor(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;)V

    .line 70
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setFontSize(I)V

    if-eqz v4, :cond_0

    .line 72
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v1, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_6

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    const/4 v7, 0x2

    const/16 v8, 0x15

    if-eq v0, v7, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setGravity(I)V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setHorizontal(Z)V

    goto :goto_0

    .line 82
    :cond_2
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v5}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setGravity(I)V

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setHorizontal(Z)V

    goto :goto_0

    .line 77
    :cond_3
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setGravity(I)V

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setHorizontal(Z)V

    goto :goto_0

    .line 103
    :cond_4
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setGravity(I)V

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setHorizontal(Z)V

    goto :goto_0

    .line 97
    :cond_5
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setGravity(I)V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setHorizontal(Z)V

    goto :goto_0

    .line 92
    :cond_6
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setGravity(I)V

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setHorizontal(Z)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->mPreviewView:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->update()V

    .line 112
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->requestLayout()V

    return-void
.end method
