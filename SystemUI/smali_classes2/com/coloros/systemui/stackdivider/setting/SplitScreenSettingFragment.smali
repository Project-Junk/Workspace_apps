.class public Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;
.super Lcom/coloros/systemui/common/settings/BaseSettingsFragment;
.source "SplitScreenSettingFragment.java"


# static fields
.field public static final KEY_DOUBLE_FINGER_SPLIT_SCREEN_SWITCH:Ljava/lang/String; = "setting_double_finger_split_screen_switch_key"

.field public static final KEY_PREFERENCE_SCREEN:Ljava/lang/String; = "split_screen"

.field public static final KEY_SPLIT_SCREEN_GUIDE:Ljava/lang/String; = "setting_split_screen_guide_key"

.field public static final KEY_SPLIT_SCREEN_SWITCH:Ljava/lang/String; = "setting_split_screen_switch_key"

.field public static final TAG:Ljava/lang/String; = "SplitScreenSettingFragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSplitScreenGuide:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

.field private mSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

.field private mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method private init()V
    .locals 4

    const-string v0, "split_screen"

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "setting_split_screen_switch_key"

    .line 84
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    const-string v0, "setting_split_screen_guide_key"

    .line 85
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mSplitScreenGuide:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

    const-string v0, "setting_double_finger_split_screen_switch_key"

    .line 86
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v1, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$SplitScreenSettingFragment$ZkNZgfWiYfWf2Is-HIsXTcmfq18;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$SplitScreenSettingFragment$ZkNZgfWiYfWf2Is-HIsXTcmfq18;-><init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v1, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$SplitScreenSettingFragment$1BwwI6FILLQFP_CakepXtCBqI38;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/stackdivider/setting/-$$Lambda$SplitScreenSettingFragment$1BwwI6FILLQFP_CakepXtCBqI38;-><init>(Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenEnable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 124
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 125
    iget-object v3, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {v3}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->getSplitScreenFingersEnable(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_1

    move v1, v2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableSplitScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enableDoubleFingerEnter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackDivider"

    const-string v3, "SplitScreenSettingFragment"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->updateDoubleFingerSwitch(Z)V

    return-void
.end method

.method public static newInstance()Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;
    .locals 2

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    new-instance v1, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;

    invoke-direct {v1}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;-><init>()V

    .line 55
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private updateDoubleFingerSwitch(Z)V
    .locals 1

    const-string v0, "setting_double_finger_split_screen_switch_key"

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f110616

    .line 78
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$init$0$SplitScreenSettingFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 89
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 90
    check-cast p1, Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onSplitScreenSwitcherSetting(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenEnable(Landroid/content/Context;I)V

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mThreeFingersSplitScreenSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenEnable(Landroid/content/Context;I)V

    .line 102
    :goto_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->updateDoubleFingerSwitch(Z)V

    return p1
.end method

.method public synthetic lambda$init$1$SplitScreenSettingFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 108
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 109
    check-cast p1, Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 112
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;->onFingersSwitcherSetting(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsValueProxy;->setSplitScreenFingersEnable(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->init()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f150010

    .line 74
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/setting/SplitScreenSettingFragment;->mSplitScreenGuide:Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;

    invoke-virtual {v0}, Lcom/coloros/systemui/stackdivider/setting/SplitScreenGuidePreference;->stopAnimation()V

    .line 149
    invoke-super {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onDestroy()V

    return-void
.end method
