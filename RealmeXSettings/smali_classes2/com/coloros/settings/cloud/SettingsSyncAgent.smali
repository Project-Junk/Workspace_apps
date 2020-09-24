.class public Lcom/coloros/settings/cloud/SettingsSyncAgent;
.super Lcom/heytap/cloud/sdk/AgentService;
.source "SettingsSyncAgent.java"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/heytap/cloud/sdk/AgentService;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "waitForClearSyncInfoLocked start where="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsSyncAgent"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 7

    const-string p1, "SettingsSyncAgent"

    const-string v0, "getAllData"

    .line 86
    invoke-static {v0}, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;

    iget-object v3, p0, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/cloud/SettingsSyncAgent;->getModuleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "backup"

    const-string v5, "add"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/heytap/cloud/sdk/utils/FileProviderUtils;->makeUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v2, v3}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->open(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    new-instance v4, Lcom/google/b/n;

    invoke-direct {v4}, Lcom/google/b/n;-><init>()V

    .line 98
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/google/b/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v2, v4}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->appendJsonObjectToFile(Lcom/google/b/n;)Z

    .line 104
    invoke-virtual {v2}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->close()V

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    iget-object v2, p0, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->getMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "add_metadata_uri"

    .line 108
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "add_metadata_md5"

    .line 109
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const-string v1, "getAllData open addDataUri failed, addDataUri = "

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAllData Exception = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAppAuthorizationStatus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "SettingsSyncAgent"

    const-string v1, "getDirtyData"

    .line 60
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/cloud/SettingsSyncAgent;->getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
    .locals 0

    const-string p1, "1"

    return-object p1
.end method

.method public getMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
    .locals 0

    const-string p1, "1"

    return-object p1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "setting"

    return-object v0
.end method

.method public getNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isCanCloseSyncSwitch(Lcom/heytap/cloud/sdk/account/Account;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLocalDataClear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAccountLogin(Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public onAccountLogout(ZLcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/heytap/cloud/sdk/AgentService;->onCreate()V

    const-string v0, "SettingsSyncAgent"

    const-string v1, "onCreate "

    .line 44
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/cloud/SettingsSyncAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a:Landroid/content/Context;

    return-void
.end method

.method public onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public onSyncSwitchStatusChange(Z)V
    .locals 0

    return-void
.end method

.method public processBackupResultFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method public processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;
    .locals 0

    const-string p3, "onServerProcessedForRecovery"

    .line 126
    invoke-static {p3}, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "processRecoveryDataFromServer-- opType ="

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "SettingsSyncAgent"

    invoke-static {p3, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 128
    invoke-virtual {p2}, Lcom/google/b/i;->a()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    invoke-virtual {p2, p1}, Lcom/google/b/i;->a(I)Lcom/google/b/k;

    move-result-object p1

    check-cast p1, Lcom/google/b/n;

    .line 132
    iget-object p3, p0, Lcom/coloros/settings/cloud/SettingsSyncAgent;->a:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/coloros/settings/cloud/b;->a(Landroid/content/Context;Lcom/google/b/n;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
