.class public Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;
.super Landroid/widget/RelativeLayout;
.source "BlurBottomButtonLayout.java"

# interfaces
.implements Lcolor/support/design/widget/blur/ColorBlurObserver;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mScale:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 59
    invoke-static {}, Lcom/color/support/util/ColorOSVersionUtil;->getColorOSVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->mScale:I

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->getY()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->mScale:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 70
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public updateView(Lcolor/support/design/widget/blur/BlurInfo;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcolor/support/design/widget/blur/BlurInfo;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p1}, Lcolor/support/design/widget/blur/BlurInfo;->getScale()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->mScale:I

    .line 54
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/BlurBottomButtonLayout;->invalidate()V

    return-void
.end method
