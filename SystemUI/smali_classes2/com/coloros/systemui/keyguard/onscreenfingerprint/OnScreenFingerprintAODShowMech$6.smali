.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$6;
.super Landroid/database/ContentObserver;
.source "OnScreenFingerprintAODShowMech.java"


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
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Landroid/os/Handler;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$6;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$1100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V

    return-void
.end method
