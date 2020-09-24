.class public Lcom/android/settings/location/AgpsPreferenceController;
.super Lcom/android/settings/core/a;
.source "AgpsPreferenceController.java"


# static fields
.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"


# instance fields
.field private mAgpsPreference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "assisted_gps"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "assisted_gps"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/location/AgpsPreferenceController;->mAgpsPreference:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/location/AgpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "assisted_gps"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "assisted_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/settings/location/AgpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/android/settings/location/AgpsPreferenceController;->mAgpsPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string v1, "assisted_gps_enabled"

    .line 71
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 60
    iget-object p1, p0, Lcom/android/settings/location/AgpsPreferenceController;->mAgpsPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/location/AgpsPreferenceController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "assisted_gps_enabled"

    .line 61
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
