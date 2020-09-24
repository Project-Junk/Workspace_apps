.class public Lcom/coloros/settings/feature/network/ColorTetherController;
.super Lcom/android/settings/core/a;
.source "ColorTetherController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 71
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 76
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 78
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 79
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    return v3

    :cond_0
    return v1

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provisionApp length should at least be 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "net.tethering.noprovisioning"

    .line 63
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    array-length p0, p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/coloros/settings/feature/network/ColorTetherController;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/network/ColorTetherController;->isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/network/ColorTetherController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 47
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/network/ColorTetherController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 50
    invoke-static {v2}, Lcom/android/settings/m;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorTetherController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/network/ColorTetherController;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
