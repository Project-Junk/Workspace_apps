.class public Lcom/android/internal/telephony/SmsPermissions;
.super Ljava/lang/Object;
.source "SmsPermissions.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmsPermissions"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    iput-object p2, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/android/internal/telephony/SmsPermissions;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/android/internal/telephony/SmsPermissions;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x14

    invoke-virtual {p2, v1, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SmsPermissions;->enforceCallerIsImsAppOrCarrierApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 70
    :catch_0
    iget-object p1, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/android/internal/telephony/SmsPermissions;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x14

    invoke-virtual {p2, v1, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enforceCallerIsImsAppOrCarrierApp(Ljava/lang/String;)V
    .locals 5

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/CarrierSmsUtils;->getCarrierImsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsPermissions;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    return-void

    :catch_0
    const/4 v0, 0x3

    const-string v1, "SMS"

    .line 96
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cannot find configured carrier ims package"

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsPermissions;->log(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsPermissions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IccSmsInterfaceManager] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsPermissions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
