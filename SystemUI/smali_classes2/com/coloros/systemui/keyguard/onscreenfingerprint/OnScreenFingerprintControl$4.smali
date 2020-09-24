.class final Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$4;
.super Ljava/lang/Object;
.source "OnScreenFingerprintControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->highlightControl(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enableTemp:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$4;->val$enableTemp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 464
    invoke-static {}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$600()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$600()Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$4;->val$enableTemp:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isDisableAppDimLayer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    invoke-static {}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$500()Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 470
    invoke-static {}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$500()Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$4;->val$enableTemp:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->setVisibility(I)V

    :cond_3
    return-void
.end method
