.class public Lcom/coloros/settings/feature/security/location/LocationMode;
.super Lcom/coloros/settings/feature/security/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;


# instance fields
.field private a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

.field private b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

.field private c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private b(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 87
    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    return-void

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    if-ne p1, v3, :cond_2

    .line 91
    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    return-void

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    if-ne p1, v3, :cond_3

    .line 95
    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setChecked(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/security/location/LocationMode;->b(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/security/location/LocationMode;->b(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/security/location/LocationMode;->b(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/security/location/LocationMode;->b(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V

    :goto_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 135
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->setEnabled(Z)V

    return-void
.end method

.method public final a(Lcom/coloros/settings/feature/security/location/RadioButtonPreference;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationMode;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4126
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->a(I)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ab5

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/coloros/settings/feature/security/location/LocationSettingsBase;->onResume()V

    .line 1063
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationMode;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v0, 0x7f1500b2

    .line 1067
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/location/LocationMode;->addPreferencesFromResource(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationMode;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "high_accuracy"

    .line 1070
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    const-string v1, "battery_saving"

    .line 1071
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    const-string v1, "sensors_only"

    .line 1072
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    .line 1073
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    .line 2063
    iput-object p0, v0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;

    .line 1074
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->b:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    .line 3063
    iput-object p0, v0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;

    .line 1075
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationMode;->c:Lcom/coloros/settings/feature/security/location/RadioButtonPreference;

    .line 4063
    iput-object p0, v0, Lcom/coloros/settings/feature/security/location/RadioButtonPreference;->a:Lcom/coloros/settings/feature/security/location/RadioButtonPreference$a;

    .line 1077
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/LocationMode;->a()V

    return-void
.end method
