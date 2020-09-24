.class public Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;
.super Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;
.source "SettingsBackupPlugin.java"


# static fields
.field private static final MAX_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsBackupPlugin"

.field private static final TYPE_SYSTEM_SETTING:I = 0x180


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mWifiDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWriter:Ljava/io/Writer;

.field private mXmlComposer:Lcom/coloros/settings/backuprestore/SettingXmlComposer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    return-void
.end method

.method private addBackupTitleBegin()V
    .locals 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN:WIFI_DATA"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BEGIN:COMMON_DATA"

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BEGIN:SOUND_DATA"

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BEGIN:DISPLAY_DATA"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BEGIN:SPECIAL_GESTURE_DATA"

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BEGIN:RINGTONE_DATA"

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const-string v0, "SettingsBackupPlugin"

    const-string v1, "addBackupTitle err "

    .line 195
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addBackupTitleEnd()V
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "END:WIFI_DATA"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END:COMMON_DATA"

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END:SOUND_DATA"

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END:DISPLAY_DATA"

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END:SPECIAL_GESTURE_DATA"

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "END:RINGTONE_DATA"

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const-string v0, "SettingsBackupPlugin"

    const-string v1, "addBackupTitleEnd err "

    .line 172
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private backupCommon()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/backuprestore/SettingsConstants;->getCommonRecord(Landroid/content/Context;)Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backupCommonData, commonRecord = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsBackupPlugin"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mXmlComposer:Lcom/coloros/settings/backuprestore/SettingXmlComposer;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/backuprestore/SettingXmlComposer;->addCommonData(Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private backupWifiData()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->getWifiSettingData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWifiDataList:Ljava/util/List;

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWifiDataList:Ljava/util/List;

    const-string v1, "SettingsBackupPlugin"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mXmlComposer:Lcom/coloros/settings/backuprestore/SettingXmlComposer;

    iget-object v2, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWifiDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/backuprestore/SettingXmlComposer;->addWifiData(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, " backupWifiData  mWriter error "

    .line 208
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " mWifiDataList = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWifiDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getWifiSettingData(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "wifi_sleep_policy"

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi"

    .line 217
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    :try_start_0
    const-string v4, "wifi_on"

    .line 219
    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 221
    invoke-static {v2, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v7, "wifi_networks_available_notification_on"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 226
    invoke-static {v2, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v5, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    const-string v5, "wifi_scan_always_enabled"

    .line 230
    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v9, -0x1

    .line 232
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 233
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    :cond_2
    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    .line 238
    invoke-static {v2, v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v8, "wifi_suspend_optimizations_enabled"

    .line 240
    invoke-static {v2, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 251
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getWifiSettingData, SettingNotFoundException:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsBackupPlugin"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method


# virtual methods
.method public onBackup(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mXmlComposer:Lcom/coloros/settings/backuprestore/SettingXmlComposer;

    const-string v0, "SettingsBackupPlugin"

    if-nez p1, :cond_1

    const-string p1, "must call prepare"

    .line 73
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mIsCancel:Z

    if-nez p1, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->addBackupTitleBegin()V

    .line 78
    invoke-direct {p0}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->backupWifiData()V

    .line 79
    invoke-direct {p0}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->backupCommon()V

    .line 80
    invoke-direct {p0}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->addBackupTitleEnd()V

    .line 81
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 83
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onBackup mIsCancel ="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mIsCancel:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mIsCancel:Z

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mIsCancel:Z

    if-nez p3, :cond_0

    .line 60
    new-instance p3, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {p3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>()V

    .line 62
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/BackupPlugin;->onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    const-string p1, "SettingsBackupPlugin"

    const-string p2, "onCreate "

    .line 63
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string p1, "SettingsBackupPlugin"

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    iget-boolean v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mIsCancel:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    .line 110
    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 111
    invoke-static {v0, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDestroy ="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "SettingsBackupPlugin"

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Setting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "settings.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 130
    new-instance v1, Lcom/coloros/settings/backuprestore/SettingXmlComposer;

    iget-object v2, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coloros/settings/backuprestore/SettingXmlComposer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mXmlComposer:Lcom/coloros/settings/backuprestore/SettingXmlComposer;

    .line 133
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingsBackupPlugin;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "new BufferedWriter failed"

    .line 135
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 138
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPrepare :"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 145
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    .line 146
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    const/16 v1, 0x180

    .line 147
    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v0

    .line 148
    invoke-static {p1, v0, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreview :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsBackupPlugin"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
