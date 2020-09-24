.class public abstract Lcom/heytap/cloud/sdk/AgentService;
.super Landroid/app/Service;
.source "AgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/cloud/sdk/AgentService$WorkHandler;,
        Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_JSON_PARSE_BATCH_SIZE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AgentService"


# instance fields
.field protected mAsyncThread:Landroid/os/HandlerThread;

.field private mBinder:Landroid/os/IBinder;

.field protected mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field protected mSyncThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getModuleMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getModuleMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getModuleNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->onSyncSwitchStatusChange(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->getAppAuthorizationStatus(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->isCanCloseSyncSwitch(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    return-void
.end method

.method private getAppAuthorizationStatus(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .locals 2

    const-string p2, "AgentService"

    const-string v0, "getAppAuthorizationStatus#"

    .line 624
    invoke-static {p2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_boolean"

    .line 626
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 627
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppAuthorizationStatus# needShowGrantDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getAppAuthorizationStatus(Z)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "getAppAuthorizationStatus# bundle is null."

    .line 630
    invoke-static {p2, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private getModuleMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 2

    .line 488
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 489
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "meta_data_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getModuleMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 2

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "module_meta_data_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getModuleNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 2

    .line 652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 653
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)I

    move-result p1

    const-string v1, "not_sync_meta_data_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private isCanCloseSyncSwitch(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 1

    .line 641
    invoke-virtual {p0, p2}, Lcom/heytap/cloud/sdk/AgentService;->isCanCloseSyncSwitch(Lcom/heytap/cloud/sdk/account/Account;)I

    move-result p2

    const-string v0, "key_int"

    .line 642
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private onSyncSwitchStatusChange(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 2

    const-string p2, "AgentService"

    const-string v0, "onSyncSwitchStatusChange#"

    .line 614
    invoke-static {p2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_boolean"

    .line 616
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSyncSwitchStatusChange# isOpen = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->onSyncSwitchStatusChange(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract cancel(Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected abstract getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
.end method

.method protected abstract getAppAuthorizationStatus(Z)Z
.end method

.method protected abstract getDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
.end method

.method protected getJsonParseBatchSize()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected abstract getMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
.end method

.method protected abstract getMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
.end method

.method protected abstract getModuleName()Ljava/lang/String;
.end method

.method protected abstract getNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)I
.end method

.method protected getSmallBinaryFilesDownloadRequestData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 0

    .line 559
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method protected getSmallBinaryFilesUploadData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 0

    .line 510
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method protected abstract hasDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Z
.end method

.method protected initHandler()V
    .locals 4

    .line 265
    new-instance v0, Lcom/heytap/cloud/sdk/AgentService$WorkHandler;

    iget-object v1, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/heytap/cloud/sdk/AgentService$WorkHandler;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V

    .line 266
    new-instance v1, Lcom/heytap/cloud/sdk/AgentService$WorkHandler;

    iget-object v2, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/heytap/cloud/sdk/AgentService$WorkHandler;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V

    .line 267
    new-instance v2, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/heytap/cloud/sdk/AgentService$MessengerHandler;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/heytap/cloud/sdk/AgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected abstract isCanCloseSyncSwitch(Lcom/heytap/cloud/sdk/account/Account;)I
.end method

.method protected abstract isLocalDataClear()Z
.end method

.method protected abstract onAccountLogin(Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected abstract onAccountLogout(ZLcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mBinder:Landroid/os/IBinder;

    if-nez p1, :cond_0

    const-string p1, "AgentService"

    const-string v0, "onBind"

    .line 245
    invoke-static {p1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mBinder:Landroid/os/IBinder;

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 230
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "AgentService"

    const-string v1, "onCreate"

    .line 231
    invoke-static {v0, v1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_sync_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncThread:Landroid/os/HandlerThread;

    .line 233
    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_async_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    .line 235
    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->initHandler()V

    .line 237
    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/heytap/cloud/sdk/AgentService;->mMessenger:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 253
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "AgentService"

    const-string v1, "onDestroy"

    .line 254
    invoke-static {v0, v1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method protected abstract onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected abstract onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected abstract onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected abstract onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected onSmallBinaryFilesSyncEnd(Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method protected onSmallBinaryFilesSyncStart(Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 1

    const-string p1, "AgentService"

    const-string v0, "onSmallBinaryFilesSyncStart call."

    .line 506
    invoke-static {p1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onSyncSwitchStatusChange(Z)V
.end method

.method protected processBackupResultFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processBackupResultFromServer bundle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 285
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/FileProviderUtils;->checkDataMD5(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "add_metadata_uri"

    .line 287
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "add"

    .line 290
    invoke-virtual {p0, v1, v0, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_0
    const-string v0, "update_metadata_uri"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "update"

    .line 296
    invoke-virtual {p0, v1, v0, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_1
    const-string v0, "delete_metadata_uri"

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "delete"

    .line 302
    invoke-virtual {p0, v1, v0, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_2
    const-string v0, "syncdelete_metadata_uri"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "syncdelete"

    .line 308
    invoke-virtual {p0, v0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "processBackupResultFromServer checkDataMD5 failed"

    .line 311
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance v0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;

    invoke-direct {v0, p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v0, p2}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->open(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 323
    new-instance p2, Lcom/google/b/i;

    invoke-direct {p2}, Lcom/google/b/i;-><init>()V

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObject()Lcom/google/b/n;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {p2, v1}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    .line 329
    :cond_2
    invoke-virtual {p2}, Lcom/google/b/i;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 330
    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V

    .line 331
    new-instance p2, Lcom/google/b/i;

    invoke-direct {p2}, Lcom/google/b/i;-><init>()V

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {p2}, Lcom/google/b/i;->a()I

    move-result v1

    if-lez v1, :cond_4

    .line 336
    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V

    .line 339
    :cond_4
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->close()V

    return-void
.end method

.method protected abstract processBackupResultFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method protected processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 425
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 428
    :cond_1
    new-instance v1, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;

    invoke-direct {v1, p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-virtual {v1, p2}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->open(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 431
    new-instance v2, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;

    invoke-direct {v2, p0}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getModuleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "recovery"

    invoke-static {v3, v5, p1, v4}, Lcom/heytap/cloud/sdk/utils/FileProviderUtils;->makeUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "AgentService"

    if-eqz v3, :cond_8

    .line 434
    invoke-virtual {v2, v3}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->open(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 435
    new-instance p2, Lcom/google/b/i;

    invoke-direct {p2}, Lcom/google/b/i;-><init>()V

    .line 436
    new-instance v0, Lcom/google/b/i;

    invoke-direct {v0}, Lcom/google/b/i;-><init>()V

    .line 437
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 438
    invoke-virtual {v1}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObject()Lcom/google/b/n;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 440
    invoke-virtual {p2, v4}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    .line 442
    :cond_3
    invoke-virtual {p2}, Lcom/google/b/i;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 443
    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;

    move-result-object p2

    .line 444
    new-instance v0, Lcom/google/b/i;

    invoke-direct {v0}, Lcom/google/b/i;-><init>()V

    if-eqz p2, :cond_4

    .line 445
    invoke-virtual {p2}, Lcom/google/b/i;->a()I

    move-result v4

    if-lez v4, :cond_4

    .line 446
    invoke-virtual {v2, p2}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->appendJsonArrayToFile(Lcom/google/b/i;)Z

    .line 447
    new-instance p2, Lcom/google/b/i;

    invoke-direct {p2}, Lcom/google/b/i;-><init>()V

    :cond_4
    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto :goto_0

    .line 451
    :cond_5
    invoke-virtual {p2}, Lcom/google/b/i;->a()I

    move-result v1

    if-lez v1, :cond_6

    .line 452
    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;

    if-eqz v0, :cond_6

    .line 453
    invoke-virtual {v0}, Lcom/google/b/i;->a()I

    move-result p1

    if-lez p1, :cond_6

    .line 454
    invoke-virtual {v2, v0}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->appendJsonArrayToFile(Lcom/google/b/i;)Z

    .line 455
    new-instance p1, Lcom/google/b/i;

    invoke-direct {p1}, Lcom/google/b/i;-><init>()V

    .line 458
    :cond_6
    invoke-virtual {v2}, Lcom/heytap/cloud/sdk/utils/JsonWriterHelper;->close()V

    return-object v3

    .line 461
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "processRecoveryDataFromServer open uri failed, resultUri = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "processRecoveryDataFromServer makeRecoveryResultDataUri failed, dataUri = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_9
    :goto_1
    invoke-virtual {v1}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->close()V

    return-object v0
.end method

.method protected processRecoveryDataFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .locals 6

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processRecoveryDataFromServer(Bundle bundle, Account account) bundle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 353
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/FileProviderUtils;->checkDataMD5(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "add_metadata_uri"

    .line 356
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "add"

    .line 359
    invoke-virtual {p0, v4, v3, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 361
    invoke-static {p0, v3}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->getMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 363
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "add_metadata_md5"

    .line 364
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "update_metadata_uri"

    .line 369
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "update"

    .line 372
    invoke-virtual {p0, v4, v3, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 374
    invoke-static {p0, v3}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->getMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "update_metadata_md5"

    .line 377
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "delete_metadata_uri"

    .line 382
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 384
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "delete"

    .line 385
    invoke-virtual {p0, v4, v3, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 387
    invoke-static {p0, v3}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->getMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 389
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delete_metadata_md5"

    .line 390
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "syncdelete_metadata_uri"

    .line 395
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 397
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "syncdelete"

    .line 398
    invoke-virtual {p0, v3, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 400
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/MD5Utils;->getMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 401
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 402
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "syncdelete_metadata_md5"

    .line 403
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_3
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    const-string p1, "processRecoveryDataFromServer checkDataMD5 failed"

    .line 414
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method protected abstract processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;
.end method

.method protected processSmallBinaryFilesDownloadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 3

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processSmallBinaryFilesDownloadResult bundle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 564
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/FileProviderUtils;->checkDataMD5(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "processSmallBinaryFilesDownloadResult checkDataMD5 failed"

    .line 568
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "download_small_binary_file_uri"

    .line 572
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "processSmallBinaryFilesDownloadResult uriStr is empty"

    .line 574
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 577
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 581
    :cond_3
    new-instance v0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;

    invoke-direct {v0, p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v0, p1}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->open(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 584
    new-instance p1, Lcom/google/b/i;

    invoke-direct {p1}, Lcom/google/b/i;-><init>()V

    .line 585
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 586
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObject()Lcom/google/b/n;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 588
    invoke-virtual {p1, v1}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    .line 590
    :cond_5
    invoke-virtual {p1}, Lcom/google/b/i;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesDownloadResult(Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V

    .line 592
    new-instance p1, Lcom/google/b/i;

    invoke-direct {p1}, Lcom/google/b/i;-><init>()V

    goto :goto_0

    .line 596
    :cond_6
    invoke-virtual {p1}, Lcom/google/b/i;->a()I

    move-result v1

    if-lez v1, :cond_7

    .line 597
    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesDownloadResult(Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V

    .line 600
    :cond_7
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->close()V

    :cond_8
    :goto_1
    return-void
.end method

.method protected processSmallBinaryFilesDownloadResult(Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 0

    return-void
.end method

.method protected processSmallBinaryFilesUploadResult(Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected processSmallBinaryFilesUploadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .locals 3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processSmallBinaryFilesUploadResult bundle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 515
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/cloud/sdk/utils/FileProviderUtils;->checkDataMD5(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "processSmallBinaryFilesUploadResult checkDataMD5 failed"

    .line 519
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "upload_small_binary_file_uri"

    .line 523
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "processSmallBinaryFilesUploadResult uriStr is empty"

    .line 525
    invoke-static {v1, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 532
    :cond_3
    new-instance v0, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;

    invoke-direct {v0, p0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v0, p1}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->open(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 535
    new-instance p1, Lcom/google/b/i;

    invoke-direct {p1}, Lcom/google/b/i;-><init>()V

    .line 536
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 537
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->readNextJsonObject()Lcom/google/b/n;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 539
    invoke-virtual {p1, v1}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    .line 541
    :cond_5
    invoke-virtual {p1}, Lcom/google/b/i;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesUploadResult(Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;

    .line 543
    new-instance p1, Lcom/google/b/i;

    invoke-direct {p1}, Lcom/google/b/i;-><init>()V

    goto :goto_0

    .line 547
    :cond_6
    invoke-virtual {p1}, Lcom/google/b/i;->a()I

    move-result v1

    if-lez v1, :cond_7

    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesUploadResult(Lcom/google/b/i;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/b/i;

    .line 551
    :cond_7
    invoke-virtual {v0}, Lcom/heytap/cloud/sdk/utils/JsonReaderHelper;->close()V

    :cond_8
    :goto_1
    return-void
.end method

.method public returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .locals 3

    const-string v0, "AgentService"

    if-nez p1, :cond_0

    const-string p1, "returnMsg messenger is null, cloud app send message must has some problem!"

    .line 661
    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    xor-int/lit8 p4, p4, 0x1

    const/4 v2, 0x0

    .line 664
    invoke-static {v1, p2, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    .line 665
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 667
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "returnMsg messenger.send get exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/cloud/sdk/base/CloudLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
