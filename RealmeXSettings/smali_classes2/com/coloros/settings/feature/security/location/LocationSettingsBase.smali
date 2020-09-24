.class public abstract Lcom/coloros/settings/feature/security/location/LocationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field private a:I

.field private b:Landroid/database/ContentObserver;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->c:Z

    return-void
.end method

.method private b()Z
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_share_location"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->c:Z

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 133
    iput v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a:I

    const/4 v1, 0x4

    const-string v2, "LocationSettingsBase"

    .line 134
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Location mode has been changed"

    .line 135
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->b()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(IZ)V

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 6

    .line 95
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->b()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "location_mode"

    const-string v3, "LocationSettingsBase"

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    .line 98
    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Restricted user, not setting location mode"

    .line 99
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 103
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(IZ)V

    :cond_1
    return-void

    .line 108
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    iget v4, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a:I

    const-string v5, "CURRENT_MODE"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "NEW_MODE"

    .line 110
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v4, v0, v5}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setLocationMode, failed to put mode: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to secure key: location_mode. The mode value maybe illegal!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->c:Z

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0, p1, v1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(IZ)V

    :cond_3
    return-void
.end method

.method public abstract a(IZ)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance p1, Lcom/coloros/settings/feature/security/location/LocationSettingsBase$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase$1;-><init>(Lcom/coloros/settings/feature/security/location/LocationSettingsBase;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->b:Landroid/database/ContentObserver;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->c:Z

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->c:Z

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.location.MODE_CHANGED"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    .line 74
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->b:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
