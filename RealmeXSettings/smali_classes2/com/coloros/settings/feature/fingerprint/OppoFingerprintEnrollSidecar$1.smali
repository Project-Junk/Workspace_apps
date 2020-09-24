.class Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;
.super Ljava/lang/Object;
.source "OppoFingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;->this$0:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;->this$0:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->cancelEnrollment()Z

    return-void
.end method
