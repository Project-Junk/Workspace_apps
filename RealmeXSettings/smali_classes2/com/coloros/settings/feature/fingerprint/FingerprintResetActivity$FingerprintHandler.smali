.class final Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;
.super Lcom/coloros/settings/utils/be;
.source "FingerprintResetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FingerprintHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;Landroid/os/Looper;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected final handleMessage(Landroid/os/Message;Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;)V
    .locals 0

    .line 281
    invoke-static {p2, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;Landroid/os/Message;)V

    return-void
.end method

.method public final bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p2, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity$FingerprintHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;)V

    return-void
.end method
