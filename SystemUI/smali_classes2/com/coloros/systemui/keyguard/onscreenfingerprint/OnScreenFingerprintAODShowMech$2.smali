.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$2;
.super Ljava/lang/Object;
.source "OnScreenFingerprintAODShowMech.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)V

    return-void
.end method
