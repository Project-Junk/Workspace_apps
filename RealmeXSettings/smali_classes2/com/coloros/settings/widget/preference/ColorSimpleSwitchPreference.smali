.class public Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;
.super Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
.source "ColorSimpleSwitchPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method protected b(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSimpleSwitchPreference;->b(Z)Z

    move-result p1

    return p1
.end method
