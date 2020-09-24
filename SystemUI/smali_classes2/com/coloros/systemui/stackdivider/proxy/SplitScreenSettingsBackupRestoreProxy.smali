.class public Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsBackupRestoreProxy;
.super Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;
.source "SplitScreenSettingsBackupRestoreProxy.java"


# static fields
.field private static final FINGER_SWITCH_STATE:Ljava/lang/String; = "finger_switch_state"

.field private static final SPLIT_SCREEN_STATE:Ljava/lang/String; = "split_screen_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadKeys()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "split_screen_state"

    .line 35
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "finger_switch_state"

    .line 36
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected onBackup(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenEnable(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenFingersEnable(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "split_screen_state"

    .line 45
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "finger_switch_state"

    .line 46
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected onRestore(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "split_screen_state"

    .line 52
    invoke-virtual {p0, p2, v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "finger_switch_state"

    .line 53
    invoke-virtual {p0, p2, v1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-eq v0, p2, :cond_0

    .line 56
    invoke-static {p1, v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenEnable(Landroid/content/Context;I)V

    :cond_0
    if-eq p0, p2, :cond_2

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 60
    invoke-static {p1, p0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p1, p0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method
