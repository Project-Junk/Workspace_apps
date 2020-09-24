.class public Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RecommendSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150104

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->addPreferencesFromResource(I)V

    const-string p1, "enable_recommend"

    .line 46
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1051
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "recommend_ad"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1052
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 1053
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1060
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d007f

    .line 1061
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setLayoutResource(I)V

    const-string v0, "recommend_switch_footer"

    .line 1062
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setKey(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setPersistent(Z)V

    .line 1065
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f12010d

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1067
    new-instance v0, Lcom/color/support/widget/ColorClickableSpan;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 1068
    new-instance v3, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings$1;-><init>(Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;)V

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 1075
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1076
    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1077
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "enable_recommend"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recommends/RecommendSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "recommend_ad"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
