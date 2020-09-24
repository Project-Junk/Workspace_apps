.class public Lcom/android/settings/network/MobilePlanPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "MobilePlanPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobilePlanPreferenceController$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private final b:Landroid/os/UserManager;

.field private final c:Z

.field private final d:Lcom/android/settings/network/MobilePlanPreferenceController$a;

.field private e:Landroid/net/ConnectivityManager;

.field private f:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$a;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->d:Lcom/android/settings/network/MobilePlanPreferenceController$a;

    const-string p2, "connectivity"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->e:Landroid/net/ConnectivityManager;

    const-string p2, "phone"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->f:Landroid/telephony/TelephonyManager;

    const-string/jumbo p2, "user"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->b:Landroid/os/UserManager;

    .line 80
    iget-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->b:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->c:Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "manage_mobile_plan"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->d:Lcom/android/settings/network/MobilePlanPreferenceController$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "manage_mobile_plan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    .line 1130
    iget-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1131
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1132
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    const-string v3, "MobilePlanPrefContr"

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 1134
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CARRIER_SETUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->f:Landroid/telephony/TelephonyManager;

    .line 1136
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1137
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v4, :cond_0

    const-string p1, "Multiple matching carrier apps found, launching the first."

    .line 1139
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    iget-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.APP_BROWSER"

    .line 1149
    invoke-static {p1, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10400000

    .line 1152
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v5, 0x7f120dbc

    if-eqz v2, :cond_4

    .line 1164
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f120dbd

    .line 1167
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    goto :goto_0

    .line 1169
    :cond_3
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    goto :goto_0

    .line 1173
    :cond_4
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 1174
    invoke-virtual {p1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    goto :goto_0

    .line 1177
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f120d9f

    .line 1179
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const v0, 0x7f120d94

    .line 1182
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    .line 1184
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1185
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onManageMobilePlanClick: message="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->d:Lcom/android/settings/network/MobilePlanPreferenceController$a;

    if-eqz p1, :cond_7

    .line 1187
    invoke-interface {p1}, Lcom/android/settings/network/MobilePlanPreferenceController$a;->b()V

    goto :goto_1

    :cond_7
    const-string p1, "Missing host fragment, cannot show message dialog."

    .line 1189
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return v1
.end method

.method public isAvailable()Z
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 119
    iget-boolean v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->c:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {v1}, Lcom/android/settingslib/l;->q(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "no_config_mobile_networks"

    invoke-static {v1, v5, v4}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "mManageMobilePlanMessage"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCreate: mMobilePlanDialogMessage="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobilePlanPrefContr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    const-string v1, "mManageMobilePlanMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
