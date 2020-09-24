.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;
.super Ljava/lang/Object;
.source "OnScreenFingerprintAODShowMech.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

.field final synthetic val$triggerByPSensor:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;->val$triggerByPSensor:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$1400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintAODShowMech"

    const-string v2, "realHide "

    .line 371
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$9;->val$triggerByPSensor:Z

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$1500(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V

    return-void
.end method
