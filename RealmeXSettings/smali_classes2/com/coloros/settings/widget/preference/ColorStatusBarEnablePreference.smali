.class public Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;
.super Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;
.source "ColorStatusBarEnablePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const-string v0, "oppo_status_bar_enable_when_lock"

    .line 43
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->a(Ljava/lang/String;)Z

    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->setChecked(Z)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method protected final b(Z)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorStatusBarEnablePreference;->a:Landroid/content/Context;

    const-string v1, "status_bar_lock_set"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1060
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_status_bar_enable_when_lock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
