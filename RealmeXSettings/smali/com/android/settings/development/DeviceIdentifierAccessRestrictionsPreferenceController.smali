.class public Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "DeviceIdentifierAccessRestrictionsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "privileged_device_identifier_3p_check_relaxed"

    const-string v1, "privileged_device_identifier_non_priv_check_relaxed"

    const-string v2, "privileged_device_identifier_priv_check_relaxed"

    .line 40
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->a:[Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 74
    sget-object v0, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 75
    iget-object v4, p0, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->b:Landroid/content/ContentResolver;

    invoke-static {v4, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "device_identifier_access_restrictions"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "privacy"

    const-string v2, "device_identifier_access_restrictions_disabled"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final m_()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->a(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 82
    sget-object p1, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->a:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 83
    iget-object v4, p0, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->b:Landroid/content/ContentResolver;

    invoke-static {v4, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 88
    :goto_1
    iget-object p1, p0, Lcom/android/settings/development/DeviceIdentifierAccessRestrictionsPreferenceController;->d:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
