.class public final Lcom/android/settings/notification/i;
.super Lcom/android/settingslib/core/a;
.source "EmergencyBroadcastPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/android/settings/accounts/c;

.field private c:Landroid/os/UserManager;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/c;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p3, p0, Lcom/android/settings/notification/i;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/android/settings/notification/i;->b:Lcom/android/settings/accounts/c;

    const-string p2, "user"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/i;->c:Landroid/os/UserManager;

    .line 57
    iget-object p1, p0, Lcom/android/settings/notification/i;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/i;->d:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/settings/accounts/c;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/i;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/c;Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_cellBroadcastAppLinks"

    .line 89
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/i;->d:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.cellbroadcastreceiver"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :catch_0
    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final isAvailable()Z
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/i;->c:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/i;->b:Lcom/android/settings/accounts/c;

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_cell_broadcasts"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/accounts/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 62
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_config_cell_broadcasts"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->b(Ljava/lang/String;)V

    return-void
.end method
