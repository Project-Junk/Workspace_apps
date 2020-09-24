.class public Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "PrivateInfoProtectPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY:Ljava/lang/String; = "key_private_info_protect"

.field private static final KEY_PRIVATE_INFO:Ljava/lang/String; = "key_private_info_protect"

.field private static final PACKAGE_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final PACKAGE_INCALLUI:Ljava/lang/String; = "com.android.incallui"

.field private static final PACKAGE_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final TAG:Ljava/lang/String; = "PrivateInfoProtectPreferenceController"

.field private static sIsColorOsCommunicationAppEnabled:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;Landroidx/preference/PreferenceScreen;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->refreshPrivacyInfoAppPreference(Landroidx/preference/PreferenceScreen;I)V

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->isColorOsContactsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isColorOsContactsEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 115
    sget-object v0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->sIsColorOsCommunicationAppEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "com.android.mms"

    .line 116
    invoke-static {p0, v0}, Lcom/coloros/settings/privacy/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.android.incallui"

    .line 117
    invoke-static {p0, v1}, Lcom/coloros/settings/privacy/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.android.contacts"

    .line 118
    invoke-static {p0, v2}, Lcom/coloros/settings/privacy/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 121
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->sIsColorOsCommunicationAppEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 123
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->sIsColorOsCommunicationAppEnabled:Ljava/lang/Boolean;

    .line 126
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->sIsColorOsCommunicationAppEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private refreshPrivacyInfoAppPreference(Landroidx/preference/PreferenceScreen;I)V
    .locals 5

    const-string v0, "key_private_info_protect"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-lez p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10004d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 101
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 104
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePrivacyInfoAppStatus(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController$1;-><init>(Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;Landroidx/preference/PreferenceScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.PRIVACY_PROTECT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.securitypermission"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
