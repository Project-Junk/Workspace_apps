.class public Lcom/android/internal/telephony/UiccPhoneBookController;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "UiccPhoneBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiccPhoneBookController"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    const-string v0, "simphonebook"

    .line 41
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 42
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 199
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, " For subscription :"

    const-string v1, "Exception is :"

    const-string v2, "UiccPhoneBookController"

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    const/4 v4, 0x0

    .line 185
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v3

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method


# virtual methods
.method public getAdnRecordsCapacity()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsCapacityForSubscriber(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsCapacity()[I

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAdnRecordsCapacity iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UiccPhoneBookController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getAdnRecordsInEf iccPbkIntMgr isnull for Subscription:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiccPhoneBookController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getAdnRecordsSizeForSubscriber(II)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getAdnRecordsSize iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiccPhoneBookController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "updateAdnRecordsInEfByIndex iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiccPhoneBookController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiccPhoneBookController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    .line 156
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsWithContentValuesInEfBySearchUsingSubId(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearchUsingSubId(IILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "updateAdnRecordsWithContentValuesInEfBySearchUsingSubId iccPbkIntMgr is null for Subscription:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UiccPhoneBookController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
