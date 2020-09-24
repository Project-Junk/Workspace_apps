.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;
.super Landroid/database/ContentObserver;
.source "OnScreenBrightnessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;Landroid/os/Handler;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-eqz p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->getScreenBrightness()I

    move-result p1

    .line 100
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 101
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;I)I

    .line 102
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->updateScreenDimLayerAlpha(I)V

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->updateFingerprintIconAlpha(I)V

    :cond_1
    return-void
.end method
