.class public Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ChooseLockGenericFragmentAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChooseLockGenericFragmentAdaptor"


# instance fields
.field private final mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 26
    const-class v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    return-void
.end method


# virtual methods
.method public getLockPasswordIntent(IIIZ[BZJZJIZILjava/lang/String;)Landroid/content/Intent;
    .locals 17

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0

    :cond_0
    move-object/from16 v0, p0

    .line 57
    iget-object v1, v0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPasswordIntent(IIIZ[BZJZJIZILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public getLockPatternIntent(Z[BZJZJIZILjava/lang/String;)Landroid/content/Intent;
    .locals 14

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0

    :cond_0
    move-object v0, p0

    .line 68
    iget-object v1, v0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    move v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getLockPatternIntent(Z[BZJZJIZILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public isEnable()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFDE()Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isFDE()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onCreateChooseFragment(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V

    return-void
.end method

.method public putExtraData(Landroid/content/Intent;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->putExtraData(Landroid/content/Intent;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public sendUnspecifiedBroadcast(Z)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->sendUnspecifiedBroadcast(Z)V

    return-void
.end method

.method public shouldProvisioned(Z)Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->shouldProvisioned(Z)Z

    move-result p1

    return p1
.end method

.method public startActivityForResult(Landroid/content/Intent;ZZI)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->startActivityForResult(Landroid/content/Intent;ZZI)V

    return-void
.end method
