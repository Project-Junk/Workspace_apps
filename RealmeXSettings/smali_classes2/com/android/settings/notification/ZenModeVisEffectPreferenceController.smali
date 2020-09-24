.class public Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I

.field protected final c:I

.field protected final d:[I

.field private l:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 45
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->a:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->b:I

    .line 47
    iput p5, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->c:I

    .line 48
    iput-object p6, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->d:[I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->l:Landroidx/preference/PreferenceScreen;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 58
    iget v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_intrusiveNotificationLed"

    .line 60
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 95
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->c:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 96
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->j:Lcom/android/settings/notification/w;

    iget v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->b:I

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/w;->a(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->j:Lcom/android/settings/notification/w;

    iget v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->b:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/w;->c(I)Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->d:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 77
    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget v6, v1, v4

    .line 78
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/w;->c(I)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :cond_1
    if-eqz v5, :cond_2

    .line 82
    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 84
    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Z)V

    return-void

    .line 86
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->a(Z)V

    .line 87
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
