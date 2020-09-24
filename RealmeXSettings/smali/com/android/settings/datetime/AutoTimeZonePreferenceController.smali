.class public Lcom/android/settings/datetime/AutoTimeZonePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AutoTimeZonePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Z

.field private final b:Lcom/android/settings/datetime/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/f;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->b:Lcom/android/settings/datetime/f;

    .line 41
    iput-boolean p3, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_zone"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/l;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 65
    iget-object p2, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time_zone"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->b:Lcom/android/settings/datetime/f;

    invoke-interface {p1}, Lcom/android/settings/datetime/f;->a_()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
