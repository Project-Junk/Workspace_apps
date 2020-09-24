.class public Lcom/android/settings/datetime/AutoTimePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AutoTimePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/datetime/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/f;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->a:Lcom/android/settings/datetime/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "auto_time"

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

    const-string v0, "auto_time"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->a:Lcom/android/settings/datetime/f;

    invoke-interface {p1}, Lcom/android/settings/datetime/f;->a_()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1191
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez v0, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/h;->b(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    return-void
.end method
