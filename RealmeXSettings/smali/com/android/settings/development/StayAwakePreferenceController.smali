.class public Lcom/android/settings/development/StayAwakePreferenceController;
.super Lcom/android/settingslib/development/b;
.source "StayAwakePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/StayAwakePreferenceController$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/development/StayAwakePreferenceController$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/development/StayAwakePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/development/StayAwakePreferenceController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/development/StayAwakePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "keep_screen_on"

    return-object v0
.end method

.method public final m_()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->a:Lcom/android/settings/development/StayAwakePreferenceController$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/settings/development/StayAwakePreferenceController$a;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "stay_on_while_plugged_in"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->a:Lcom/android/settings/development/StayAwakePreferenceController$a;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/android/settings/development/StayAwakePreferenceController$a;

    invoke-direct {v0, p0}, Lcom/android/settings/development/StayAwakePreferenceController$a;-><init>(Lcom/android/settings/development/StayAwakePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->a:Lcom/android/settings/development/StayAwakePreferenceController$a;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->a:Lcom/android/settings/development/StayAwakePreferenceController$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/StayAwakePreferenceController$a;->a(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 1134
    iget-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/h;->c(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 98
    iget-object v1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    return-void
.end method
