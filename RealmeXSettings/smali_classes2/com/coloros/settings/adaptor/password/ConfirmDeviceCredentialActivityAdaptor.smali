.class public Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ConfirmDeviceCredentialActivityAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/password/ConfirmDeviceCredentialActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 31
    new-instance v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    const-string v1, "screen_lock"

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    return-void
.end method


# virtual methods
.method public confirmCredentialActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->confirmCredentialActivityResult(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public finish()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onCredentialFinish()Z

    move-result v0

    return v0
.end method

.method public isFromSystemOnlyPassword(Landroid/content/Intent;)Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isFromSystemOnlyPassword(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public launchConfirmationActivity(Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZJI)Z
    .locals 15

    move-object v0, p0

    .line 64
    iget-object v1, v0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move/from16 v4, p11

    invoke-static {v3, v4}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v14

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 64
    invoke-virtual/range {v1 .. v14}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->launchConfirmationActivity(Landroid/app/Activity;Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v1

    return v1
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZJI)Z
    .locals 15

    move-object v0, p0

    .line 50
    iget-object v1, v0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move/from16 v4, p11

    invoke-static {v3, v4}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v14

    const/4 v11, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v12, p9

    .line 50
    invoke-virtual/range {v1 .. v14}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->launchConfirmationActivityWithExternalAndChallenge(Landroid/app/Activity;Lcom/coloros/settings/feature/password/a;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v1

    return v1
.end method
