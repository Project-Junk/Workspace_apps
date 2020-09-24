.class Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingprintSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchRemoveCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mThreadHandler:Landroid/os/Handler;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mContext:Landroid/content/Context;

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 88
    iput-object p4, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mThreadHandler:Landroid/os/Handler;

    .line 89
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRemovalError"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", error = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FingprintSwitchHelper"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mUserId:I

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->access$000(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mThreadHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 p2, 0x3f7

    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 4

    const-string p2, "FingprintSwitchHelper"

    const-string v0, "onRemovalSucceeded"

    .line 95
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mUserId:I

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->access$000(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRemovalSucceeded "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mThreadHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 p2, 0x3f2

    .line 103
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllCompelete(Landroid/content/Context;)V

    return-void
.end method
