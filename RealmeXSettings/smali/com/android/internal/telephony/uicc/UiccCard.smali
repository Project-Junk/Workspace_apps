.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# static fields
.field protected static final DBG:Z = true

.field public static final EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"


# instance fields
.field public mCardId:Ljava/lang/String;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mIccid:Ljava/lang/String;

.field protected final mLock:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mPhoneId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Creating"

    .line 68
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 69
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 70
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 71
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "UiccCard"

    .line 519
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "UiccCard"

    .line 524
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Disposing card"

    .line 77
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->dispose()V

    :cond_0
    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "UiccCard:"

    .line 528
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCardState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCardId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPhoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    const-string v0, "UiccCard finalized"

    .line 109
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 201
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 236
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 216
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 218
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-object v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumApplications()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method public getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 186
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->hasCarrierPrivilegeRules()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "iccCloseLogicalChannel Failed!"

    .line 283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 329
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "iccExchangeSimIO Failed!"

    .line 331
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "iccOpenLogicalChannel Failed!"

    .line 269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 314
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "iccTransmitApduBasicChannel Failed!"

    .line 316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 296
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 297
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string v1, "iccTransmitApduLogicalChannel Failed!"

    .line 300
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 165
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "registerForCarrierPrivilegeRulesLoaded Failed!"

    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 137
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetAppWithAid(Ljava/lang/String;Z)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 254
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "sendEnvelopeWithStatus Failed!"

    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unregisterForCarrierPrivilegeRulesLoaded Failed!"

    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 152
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    iget-object p1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateCardId()V

    .line 93
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p1, p2, :cond_1

    .line 94
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    move-object v4, p3

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1, p2, v1, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 104
    :goto_0
    monitor-exit v0

    return-void

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Card state is absent when updating!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected updateCardId()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardId:Ljava/lang/String;

    return-void
.end method
