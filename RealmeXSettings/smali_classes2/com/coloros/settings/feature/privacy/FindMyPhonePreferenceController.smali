.class public Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "FindMyPhonePreferenceController.java"


# static fields
.field private static final ACTION_FIND_MY_PHONE:Ljava/lang/String; = "com.oppo.findmyphone.LAUNCHER"

.field private static final ACTION_GOOGLE_FIND_PHONE:Ljava/lang/String; = "com.google.android.gms.settings.ADM_SETTINGS"

.field private static final PACKAGE_FIND_MY_PHONE:Ljava/lang/String; = "com.coloros.findmyphone"

.field private static final PREF_FIND_MY_PHONE:Ljava/lang/String; = "key_find_my_phone"

.field private static final TAG:Ljava/lang/String; = "FindMyPhonePreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSupportGoogleFindPhone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->isSupportGoogleFindPhone()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mIsSupportGoogleFindPhone:Z

    return-void
.end method

.method private isSupportGoogleFindPhone()Z
    .locals 3

    .line 105
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.settings.ADM_SETTINGS"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_find_my_phone"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 64
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mIsSupportGoogleFindPhone:Z

    if-eqz v0, :cond_0

    const v0, 0x7f121442

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const v0, 0x7f121443

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mIsSupportGoogleFindPhone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 72
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    const-string v0, "FindMyPhonePreferenceController"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 73
    iget-boolean p1, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mIsSupportGoogleFindPhone:Z

    if-eqz p1, :cond_1

    .line 75
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.settings.ADM_SETTINGS"

    .line 76
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p1, "start google find phone error."

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "2020"

    .line 1030
    invoke-static {p1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.oppo.findmyphone.LAUNCHER"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.coloros.findmyphone"

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception p1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/privacy/FindMyPhonePreferenceController;->mContext:Landroid/content/Context;

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/coloros/settings/utils/a$1;

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/coloros/settings/utils/a$1;-><init>(Landroid/os/Looper;)V

    .line 1034
    invoke-static {v0, v3, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return v1
.end method
