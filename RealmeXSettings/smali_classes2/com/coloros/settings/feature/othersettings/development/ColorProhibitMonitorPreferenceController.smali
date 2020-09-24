.class public Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "ColorProhibitMonitorPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private a:Landroid/app/OppoActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Landroid/app/OppoActivityManager;

    invoke-direct {p1}, Landroid/app/OppoActivityManager;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->a:Landroid/app/OppoActivityManager;

    return-void
.end method

.method private a(Z)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeProhibitMonitorOptions isProhibit="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorProhibitMonitorPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->a:Landroid/app/OppoActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OppoActivityManager;->setPermissionInterceptEnable(Z)V

    .line 75
    new-instance p1, Landroid/content/Intent;

    const-string v0, "coloros.intent.action.PERMISSION_MONITOR_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "writeProhibitMonitorOptions e="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "safecenter_prohibit_monitor"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->a(Z)V

    .line 87
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 54
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    const-string p1, "ColorProhibitMonitorPreferenceController"

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->a:Landroid/app/OppoActivityManager;

    invoke-virtual {v0}, Landroid/app/OppoActivityManager;->isPermissionInterceptEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1063
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateProhibitMonitorOptions e="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1065
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateProhibitMonitorOptions prohibitMonitor="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorProhibitMonitorPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
