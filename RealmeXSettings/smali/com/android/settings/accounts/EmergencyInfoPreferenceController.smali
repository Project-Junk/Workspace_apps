.class public Lcom/android/settings/accounts/EmergencyInfoPreferenceController;
.super Lcom/android/settings/core/a;
.source "EmergencyInfoPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getIntentAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1205ef

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1205f0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->getIntentAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {v2}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->getIntentAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/settings/search/e;

    iget-object v1, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208ae

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f1208ad

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
