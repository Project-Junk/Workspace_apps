.class public final Lcom/coloros/settings/feature/deviceinfo/controller/e;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorImeiSVPreferenceController.java"


# instance fields
.field private final b:Z

.field private final c:Landroid/telephony/SubscriptionManager;

.field private final d:Landroid/telephony/TelephonyManager;

.field private e:Landroid/telephony/SubscriptionInfo;

.field private f:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "imei_sv"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->c:Landroid/telephony/SubscriptionManager;

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->c:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->e:Landroid/telephony/SubscriptionInfo;

    const-string v0, "phone"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->d:Landroid/telephony/TelephonyManager;

    .line 64
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/e;->c()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->f:Lcom/android/internal/telephony/Phone;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oppo.version.exp"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->b:Z

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    .line 87
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NULL"

    const-string v3, "ro.oppo.operator"

    .line 88
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "imeiSV: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", operator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ColorImeiSVPreferenceController"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "AU"

    .line 90
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OPTUS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VODAFONE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    const-string v1, "[.]A[.][A-Za-z0-9]+"

    .line 92
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v3, "ro.build.version.ota"

    .line 93
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".A."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private c()Lcom/android/internal/telephony/Phone;
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->f:Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->f:Lcom/android/internal/telephony/Phone;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate getDefaultPhone err Default phones haven\'t been made yet! message = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorImeiSVPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->f:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->b:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->mContext:Landroid/content/Context;

    const v1, 0x7f121757

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->f:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/e;->f:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
