.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;
.super Landroid/widget/ImageView;
.source "OnScreenDimLayer.java"


# static fields
.field private static final DIM_LAYER_INITIAL_COLOR:I = -0x1000000

.field private static final TAG:Ljava/lang/String; = "OnScreenDimLayer"


# instance fields
.field private mFillLightState:I

.field private mHandler:Landroid/os/Handler;

.field private mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

.field private mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p3, -0x1000000

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    .line 48
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->setOnScreenDimLayer(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;)V

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->getScreenBrightness()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->updateScreenDimLayerAlpha(I)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->mOnScreenBrightnessUtils:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->setOnScreenDimLayer(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;)V

    return-void
.end method

.method public updateDimLayerAlpha(F)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
