.class public Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;
.super Landroid/widget/ImageView;
.source "ColorSystemPromptView.java"

# interfaces
.implements Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$IconVisibleChange;


# static fields
.field private static final ENLARGE_NUM:I = 0x3

.field private static final REDUCE_NUM:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setImage(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isTouch(II)Z
    .locals 3

    const/4 p2, 0x2

    .line 61
    new-array v0, p2, [I

    .line 65
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->getLocationOnScreen()[I

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->getWidth()I

    move-result p0

    .line 68
    aget v2, v0, v1

    div-int/2addr p0, p2

    sub-int p2, v2, p0

    .line 69
    aget v0, v0, v1

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    move p2, p0

    :goto_0
    if-gt p2, p1, :cond_1

    if-gt p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public updateIcon(IZ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/ColorSystemPromptView;->setImage(IZ)V

    return-void
.end method
