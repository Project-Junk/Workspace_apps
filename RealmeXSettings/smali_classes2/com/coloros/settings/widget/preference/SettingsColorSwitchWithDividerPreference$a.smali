.class final Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;
.super Ljava/lang/Object;
.source "SettingsColorSwitchWithDividerPreference.java"

# interfaces
.implements Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/preference/Preference;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Landroidx/preference/Preference;I)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    .line 89
    iput p2, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->b:I

    const/4 p1, -0x1

    .line 90
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/preference/Preference;IB)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;-><init>(Landroidx/preference/Preference;I)V

    return-void
.end method


# virtual methods
.method public final onMainLayoutClick()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    .line 97
    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    .line 102
    invoke-virtual {v1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Landroidx/preference/Preference;)Lcom/android/settings/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->a:Landroidx/preference/Preference;

    .line 104
    invoke-virtual {v1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->b:I

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference$a;->c:I

    const/4 v2, 0x0

    .line 1063
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SettingsColorSwitchWithDividerPreference"

    const-string v1, "DefaultMainLayoutClick#onMainLayoutClick: do nothing"

    .line 98
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
