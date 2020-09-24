.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;,
        Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoController"

.field private static final VDBG:Z = false


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mPhone:[Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const-string p2, "iphonesubinfo"

    .line 53
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {p2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method private callPhoneMethodForPhoneIdWithReadDeviceIdentifierCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 438
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 445
    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v0

    .line 450
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 452
    :try_start_0
    invoke-interface {p4, p1}, Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;->callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private callPhoneMethodForSubIdWithModifyCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 420
    new-instance v5, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FaTJacNu-RHvDC1rij_Zw6lmPGM;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FaTJacNu-RHvDC1rij_Zw6lmPGM;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 411
    new-instance v5, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;

    invoke-direct {v5, p0, p2}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 394
    sget-object v5, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$qSXnUMuIwAZ0TQjtyVEfznh1w8o;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$qSXnUMuIwAZ0TQjtyVEfznh1w8o;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private callPhoneMethodForSubIdWithReadPhoneNumberCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 429
    sget-object v5, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 402
    sget-object v5, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper<",
            "TT;>;",
            "Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;",
            ")TT;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-interface {p5, v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;->checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 p5, 0x0

    if-nez p2, :cond_0

    return-object p5

    .line 378
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 382
    invoke-interface {p4, p2}, Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;->callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 384
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " phone is null for Subscription:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p5

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private enforceModifyPermission()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 200
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 201
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object p1, v0, p1

    return-object p1
.end method

.method static synthetic lambda$callPhoneMethodForSubIdWithReadCheck$22(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 396
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$callPhoneMethodForSubIdWithReadPhoneNumberCheck$26(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 431
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck$23(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 404
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getCarrierInfoForImsiEncryption$3(ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;
    .locals 0

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getDeviceIdForPhone$0(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getDeviceSvnUsingSubId$6(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getGroupIdLevel1ForSubscriber$21(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getIccSerialNumberForSubscriber$8(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getImeiForSubscriber$2(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getIsimDomain$15(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 261
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getIsimImpi$14(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getIsimImpu$16(Lcom/android/internal/telephony/Phone;)[Ljava/lang/String;
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 276
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getIsimIst$17(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 291
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getIsimPcscf$18(Lcom/android/internal/telephony/Phone;)[Ljava/lang/String;
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 306
    invoke-interface {p0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getLine1AlphaTagForSubscriber$10(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLine1NumberForSubscriber$9(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getMsisdnForSubscriber$11(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getNaiForSubscriber$1(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getSubscriberIdForSubscriber$7(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getVoiceMailAlphaTagForSubscriber$13(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$resetCarrierKeysForImsiEncryption$5(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->resetCarrierKeysForImsiEncryption()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setCarrierInfoForImsiEncryption$4(Landroid/telephony/ImsiEncryptionInfo;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneSubInfoController"

    .line 459
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "PhoneSubInfoController"

    .line 464
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AjZFvwh3Ujx5W3fleFNksc6bLf0;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AjZFvwh3Ujx5W3fleFNksc6bLf0;-><init>(I)V

    const-string p2, "getCarrierInfoForImsiEncryption"

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ImsiEncryptionInfo;

    return-object p1
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$LX6rN0XZFTVXkDiHGVCozgs8kHU;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$LX6rN0XZFTVXkDiHGVCozgs8kHU;

    const-string v1, "getDeviceId"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForPhoneIdWithReadDeviceIdentifierCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 119
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$VgStcgP2F9IDb29Rx_E2o89A-7U;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$VgStcgP2F9IDb29Rx_E2o89A-7U;

    const-string v1, "getDeviceSvn"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 348
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$bWluhZvk2X-dQ0UidKfdpd0kwuw;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$bWluhZvk2X-dQ0UidKfdpd0kwuw;

    const-string v1, "getGroupIdLevel1"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 140
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1zkPy06BwndFkKrGCUI1ORIPJcI;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1zkPy06BwndFkKrGCUI1ORIPJcI;

    const-string v1, "getIccSerialNumber"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIccSimChallengeResponse(IIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    new-instance v4, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$1-6zFa-5X-_-HsO5oSaupKDtHL0;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;IILjava/lang/String;)V

    .line 339
    new-instance v5, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$NO5-HxAafVP54fe9chLZKTACeyU;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$NO5-HxAafVP54fe9chLZKTACeyU;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const/4 v2, 0x0

    const-string v3, "getIccSimChallengeResponse"

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodWithPermissionCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$_djiy1W26lRIJyfoQefqkIQNgSU;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$_djiy1W26lRIJyfoQefqkIQNgSU;

    const-string v1, "getImei"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 2

    .line 257
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ZOtVAnuhxrXl2L906I6eTOentP0;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ZOtVAnuhxrXl2L906I6eTOentP0;

    const-string v1, "getIsimDomain"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 2

    .line 242
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$UaKjkq7sTW3Fbf04O086aBFm63M;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$UaKjkq7sTW3Fbf04O086aBFm63M;

    const-string v1, "getIsimImpi"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 2

    .line 272
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$2xgrYNleR8FFzFT8hEQx3mDtZ8g;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$2xgrYNleR8FFzFT8hEQx3mDtZ8g;

    const-string v1, "getIsimImpu"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$rpyQeO7zACcc5v4krwU9_qRMHL8;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$rpyQeO7zACcc5v4krwU9_qRMHL8;

    const-string v1, "getIsimIst"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;

    const-string v1, "getIsimPcscf"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithPrivilegedCheck(ILjava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 159
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$hh4N6_N4-PPm_vWjCdCRvS8--Cw;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$hh4N6_N4-PPm_vWjCdCRvS8--Cw;

    const-string v1, "getLine1AlphaTag"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 149
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$P0j9hvO3e-UE9_1i1QM_ujl8Bpo;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$P0j9hvO3e-UE9_1i1QM_ujl8Bpo;

    const-string v1, "getLine1Number"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadPhoneNumberCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 168
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$dmWm-chcWksZlUJPg5OfrbagSrA;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$dmWm-chcWksZlUJPg5OfrbagSrA;

    const-string v1, "getMsisdn"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 71
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AAs5l6UPqOJI6iOy7O7wnhNgpN4;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$AAs5l6UPqOJI6iOy7O7wnhNgpN4;

    const-string v1, "getNai"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$2WGP2Bp11k7_Xwi1N4YefElOUuM;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$2WGP2Bp11k7_Xwi1N4YefElOUuM;

    const-string v1, "getSubscriberId"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 191
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$oLIrumQtrxqYONQeIeqNtbJdJMU;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$oLIrumQtrxqYONQeIeqNtbJdJMU;

    const-string v1, "getVoiceMailAlphaTag"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Ja9yTBcEYPqTRBIP-hL0otixVeE;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Ja9yTBcEYPqTRBIP-hL0otixVeE;-><init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V

    const-string v1, "getVoiceMailNumber"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithReadCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public synthetic lambda$callPhoneMethodForSubIdWithModifyCheck$25$PhoneSubInfoController(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforceModifyPermission()V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$callPhoneMethodForSubIdWithPrivilegedCheck$24$PhoneSubInfoController(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 413
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$getIccSimChallengeResponse$19$PhoneSubInfoController(IILjava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 3

    .line 316
    invoke-virtual {p4}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p1, "getIccSimChallengeResponse() UiccCard is null"

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p4, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p4

    if-nez p4, :cond_1

    .line 324
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getIccSimChallengeResponse() no app with specified type -- "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 327
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIccSimChallengeResponse() found app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " specified type -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/16 p1, 0x80

    if-eq p2, p1, :cond_2

    const/16 p1, 0x81

    if-eq p2, p1, :cond_2

    .line 333
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getIccSimChallengeResponse() unsupported authType: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v0

    .line 336
    :cond_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getIccSimChallengeResponse$20$PhoneSubInfoController(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 342
    invoke-direct {p0, p2, p4}, Lcom/android/internal/telephony/PhoneSubInfoController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$getVoiceMailNumberForSubscriber$12$PhoneSubInfoController(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V
    .locals 2

    .line 105
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;

    const-string v1, "setCarrierInfoForImsiEncryption"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithModifyCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    return-void
.end method

.method public setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ChCf_gnGN3K5prBkykg6tWs0aTk;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$ChCf_gnGN3K5prBkykg6tWs0aTk;-><init>(Landroid/telephony/ImsiEncryptionInfo;)V

    const-string p3, "setCarrierInfoForImsiEncryption"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->callPhoneMethodForSubIdWithModifyCheck(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;)Ljava/lang/Object;

    return-void
.end method
