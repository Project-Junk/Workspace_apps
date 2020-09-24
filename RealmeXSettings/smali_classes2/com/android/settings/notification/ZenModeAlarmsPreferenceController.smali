.class public Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeAlarmsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 73
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 74
    sget-boolean p2, Lcom/android/settings/notification/ZenModeSettingsBase;->j:Z

    if-eqz p2, :cond_0

    .line 75
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onPrefChange allowAlarms="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PrefControllerMixin"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ca

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 80
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->j:Lcom/android/settings/notification/w;

    const/16 v0, 0x20

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/w;->b(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 54
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 65
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->j:Lcom/android/settings/notification/w;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/w;->d(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 62
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 57
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 58
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
