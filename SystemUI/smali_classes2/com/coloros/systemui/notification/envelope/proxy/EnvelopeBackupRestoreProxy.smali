.class public Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;
.super Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;
.source "EnvelopeBackupRestoreProxy.java"


# static fields
.field private static final ENVELOPE_AUTO_OPEN:Ljava/lang/String; = "envelope_auto_open"

.field private static final ENVELOPE_COUNT:Ljava/lang/String; = "envelope_count"

.field private static final ENVELOPE_ENABLED:Ljava/lang/String; = "envelope_assistant_enable"

.field private static final ENVELOPE_SOUND_ENABLED:Ljava/lang/String; = "envelope_notice_sound_enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

    const-string v0, "envelope_assistant_enable"

    .line 35
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "envelope_notice_sound_enable"

    .line 36
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "envelope_auto_open"

    .line 37
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "envelope_count"

    .line 38
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected onBackup(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 5
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

    .line 44
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeNoticeSoundEnable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAutoOpenEnable(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeCount(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "envelope_assistant_enable"

    .line 50
    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "envelope_notice_sound_enable"

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "envelope_auto_open"

    .line 52
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "envelope_pre_key"

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "envelope_count_key"

    .line 55
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v1, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->isUpgradeFromOldVersion(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "envelope_count"

    if-eqz p1, :cond_0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method protected onRestore(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
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

    const-string v0, "envelope_assistant_enable"

    .line 66
    invoke-virtual {p0, p2, v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "envelope_notice_sound_enable"

    .line 67
    invoke-virtual {p0, p2, v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    const-string v2, "envelope_auto_open"

    .line 68
    invoke-virtual {p0, p2, v2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    const-string v3, "envelope_count"

    .line 69
    invoke-virtual {p0, p2, v3}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-eq v0, p2, :cond_0

    .line 71
    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAssistantEnable(Landroid/content/Context;I)V

    :cond_0
    if-eq v1, p2, :cond_1

    .line 74
    invoke-static {p1, v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeNoticeSoundEnable(Landroid/content/Context;I)V

    :cond_1
    if-eq v2, p2, :cond_2

    .line 77
    invoke-static {p1, v2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAutoOpenEnable(Landroid/content/Context;I)V

    :cond_2
    if-eq p0, p2, :cond_3

    .line 80
    invoke-static {p1, p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeCount(Landroid/content/Context;I)V

    :cond_3
    return-void
.end method
