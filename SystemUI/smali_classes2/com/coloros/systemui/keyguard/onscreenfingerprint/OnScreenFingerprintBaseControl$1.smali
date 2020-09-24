.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$1;
.super Landroid/database/ContentObserver;
.source "OnScreenFingerprintBaseControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;)V

    return-void
.end method
