.class public Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;
.super Lcom/coloros/systemui/common/settings/BaseSettingsFragment;
.source "MoreNavigationModeSettingFragment.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGestureGuideData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

.field private mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

.field private mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

.field private mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

.field private mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

.field private mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

.field private mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

.field private mIsDialogShowing:Z

.field private mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

.field private mNavTypePref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mScreenEndDivider:Lcom/color/support/preference/ColorPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;-><init>()V

    const-string v0, "MoreNavigationModeSettingFragment"

    .line 59
    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mIsDialogShowing:Z

    return-void
.end method

.method private initGestureGuideData()V
    .locals 14

    const-string v0, "NavBar"

    const-string v1, "MoreNavigationModeSettingFragment"

    const-string v2, "initGestureGuideData"

    .line 197
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    .line 206
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    const/4 v7, 0x3

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    const-string v2, "gesture_up_combination_both_back_key"

    const v3, 0x7f110367

    const v4, 0x7f080dc4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;-><init>(Ljava/lang/String;II[IZ)V

    .line 213
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    const/4 v1, 0x2

    new-array v12, v1, [I

    fill-array-data v12, :array_1

    const-string v9, "gesture_up_combination_only_home_key"

    const v10, 0x7f110368

    const v11, 0x7f080dc5

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;-><init>(Ljava/lang/String;II[IZ)V

    .line 222
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    new-array v12, v7, [I

    fill-array-data v12, :array_2

    const-string v9, "gesture_up_combination_right_back_key"

    const v10, 0x7f1108bd

    const v11, 0x7f080dc6

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;-><init>(Ljava/lang/String;II[IZ)V

    .line 234
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    new-array v12, v7, [I

    fill-array-data v12, :array_3

    const-string v9, "gesture_up_combination_left_back_key"

    const v10, 0x7f1108bc

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;-><init>(Ljava/lang/String;II[IZ)V

    .line 246
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x7f11036b
        0x7f11036c
        0x7f11036f
    .end array-data

    :array_1
    .array-data 4
        0x7f11036c
        0x7f11036f
    .end array-data

    :array_2
    .array-data 4
        0x7f11036e
        0x7f11036c
        0x7f11036b
    .end array-data

    :array_3
    .array-data 4
        0x7f11036b
        0x7f11036c
        0x7f11036e
    .end array-data
.end method

.method private initPreferenceView()V
    .locals 4

    const-string v0, "NavBar"

    const-string v1, "MoreNavigationModeSettingFragment"

    const-string v2, "initPreferenceView"

    .line 107
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nav_bar_screen_pref_key"

    .line 108
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nav_type_pref_key"

    .line 110
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypePref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "nav_type_gesture_up_key"

    .line 111
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorMarkPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setShowDivider(Z)V

    const-string v0, "gesture_up_combination_pref_key"

    .line 115
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 117
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_0

    const v2, 0x7f11036d

    .line 118
    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorPreferenceCategory;->setTitle(I)V

    :cond_0
    const-string v0, "gesture_up_combination_both_back_key"

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v0, v2, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v0, "gesture_up_combination_only_home_key"

    .line 123
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v0, v2, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v0, "gesture_up_combination_right_back_key"

    .line 125
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v0, v2, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v0, "gesture_up_combination_left_back_key"

    .line 127
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v0, v2, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v0, "gesture_up_component_pref_key"

    .line 129
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "gesture_up_hide_guide_bar_key"

    .line 130
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v2, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$DtXsMbbstGzopElt9CkMXWEnUj4;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$DtXsMbbstGzopElt9CkMXWEnUj4;-><init>(Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "gesture_up_mistouch_prevention_key"

    .line 146
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v2, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$G-UiMzAMJLDw_x34f_QK45pnoaU;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$G-UiMzAMJLDw_x34f_QK45pnoaU;-><init>(Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "gesture_up_follow_screen_rotation"

    .line 160
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v2, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$OpuAqHoRMzbOCThFtbczNaiwebk;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$OpuAqHoRMzbOCThFtbczNaiwebk;-><init>(Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    :cond_1
    const-string v0, "end_divider_key"

    .line 191
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mScreenEndDivider:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 193
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->changeGestureUpGroupVisible(Z)V

    return-void
.end method

.method public static newInstance()Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;
    .locals 2

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    new-instance v1, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;

    invoke-direct {v1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;-><init>()V

    .line 102
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onUpdateGestureUpGroup()V
    .locals 4

    const-string v0, "NavBar"

    const-string v1, "MoreNavigationModeSettingFragment"

    const-string v2, "onUpdateGestureUpGroup"

    .line 287
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->changeGestureUpGroupVisible(Z)V

    .line 291
    invoke-direct {p0, v2}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->showTalkbackWarningDialog(I)V

    goto :goto_2

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 295
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->changeGestureUpGroupVisible(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureKeysMode(Landroid/content/Context;)I

    move-result v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->setGestureUpCombination(I)V

    .line 298
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 300
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureBarType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 304
    :goto_1
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_6

    .line 310
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 312
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz p0, :cond_6

    .line 313
    invoke-virtual {p0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method private showTalkbackWarningDialog(I)V
    .locals 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTalkbackWarningDialog, targetNavMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "MoreNavigationModeSettingFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mIsDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const p1, 0x7f110572

    goto :goto_0

    :cond_1
    const p1, 0x7f110571

    .line 399
    :goto_0
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 400
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f110570

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    if-eqz v0, :cond_2

    const/16 v1, 0x7f6

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 406
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 407
    sget v2, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v1, v2}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 410
    :cond_2
    new-instance v0, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$Sx86c_zhimQHlw0nhyfv4CM1FWE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$Sx86c_zhimQHlw0nhyfv4CM1FWE;-><init>(Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 411
    new-instance v0, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$CxF9JbBu68uHfLLc9TYY7atGNWk;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$MoreNavigationModeSettingFragment$CxF9JbBu68uHfLLc9TYY7atGNWk;-><init>(Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mIsDialogShowing:Z

    .line 413
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private stopLockTaskMode()V
    .locals 3

    const-string v0, "NavBar"

    const-string v1, "MoreNavigationModeSettingFragment"

    const-string v2, "stopLockTaskMode"

    .line 376
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getLockTaskModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->setLockTaskModeState(Landroid/content/Context;I)V

    .line 379
    invoke-static {}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->stopLockTaskMode()V

    :cond_0
    return-void
.end method

.method private updatePreferenceView()V
    .locals 4

    .line 445
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreferenceView, navType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "MoreNavigationModeSettingFragment"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 453
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->changeGestureUpGroupVisible(Z)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->onUpdateGestureUpGroup()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeGestureUpGroupVisible(Z)V
    .locals 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeGestureUpGroupVisible, isVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "MoreNavigationModeSettingFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "gesture_up_component_pref_key"

    const-string v2, "gesture_up_combination_pref_key"

    if-eqz p1, :cond_3

    .line 326
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_2

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_5

    const-string v0, "gesture_up_combination_only_home_key"

    .line 335
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 336
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_4

    .line 341
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 344
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 348
    :cond_5
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureNavigationDisable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 349
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nav_type_pref_key"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 350
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypePref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 353
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "end_divider_key"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_7

    .line 354
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mScreenEndDivider:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    return-void
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1105ec

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$initPreferenceView$0$MoreNavigationModeSettingFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 133
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureBarSuspendEnable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 134
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    :goto_1
    return v2
.end method

.method public synthetic lambda$initPreferenceView$1$MoreNavigationModeSettingFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 148
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 149
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$initPreferenceView$2$MoreNavigationModeSettingFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 162
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 163
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    :cond_0
    const-string p1, "gesture_mistouch_prevention_enable"

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;I)V

    .line 170
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v1}, Lcom/coloros/systemui/navbar/utils/NavBarDataCommon;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 173
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v1

    .line 176
    invoke-static {p2, p1, v1}, Lcom/coloros/systemui/navbar/utils/NavBarDataCommon;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;I)V

    :goto_0
    return v0
.end method

.method public synthetic lambda$showTalkbackWarningDialog$3$MoreNavigationModeSettingFragment(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 410
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mIsDialogShowing:Z

    return-void
.end method

.method public synthetic lambda$showTalkbackWarningDialog$4$MoreNavigationModeSettingFragment(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 411
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mIsDialogShowing:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NavBar"

    const-string v0, "MoreNavigationModeSettingFragment"

    const-string v1, "onCreate"

    .line 87
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f150008

    .line 89
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->addPreferencesFromResource(I)V

    .line 90
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->initGestureGuideData()V

    .line 91
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->initPreferenceView()V

    return-void
.end method

.method public onGestureModeChange(Ljava/lang/String;)V
    .locals 5

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureModeChange key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "MoreNavigationModeSettingFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "gesture_up_combination_left_back_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "gesture_up_combination_only_home_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "gesture_up_combination_right_back_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "gesture_up_combination_both_back_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 430
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->setGestureUpCombination(I)V

    goto :goto_2

    .line 427
    :cond_2
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->setGestureUpCombination(I)V

    goto :goto_2

    .line 424
    :cond_3
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->setGestureUpCombination(I)V

    goto :goto_2

    .line 421
    :cond_4
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->setGestureUpCombination(I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x27b1df27 -> :sswitch_3
        0x2f99b8e8 -> :sswitch_2
        0x32fcaf54 -> :sswitch_1
        0x7acf3161 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 360
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "MoreNavigationModeSettingFragment"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x56a86cfa

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "nav_type_gesture_up_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 372
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    .line 365
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->onUpdateGestureUpGroup()V

    .line 366
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->stopLockTaskMode()V

    goto :goto_2

    .line 368
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    :goto_2
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 439
    invoke-super {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onResume()V

    const-string v0, "NavBar"

    const-string v1, "MoreNavigationModeSettingFragment"

    const-string v2, "onResume"

    .line 440
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->updatePreferenceView()V

    return-void
.end method

.method public setGestureUpCombination(I)V
    .locals 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGestureUpCombination, gestureKeysMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "MoreNavigationModeSettingFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v1, v0

    move v2, v1

    :goto_0
    move v3, v2

    goto :goto_2

    :cond_0
    move v3, v0

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    move v3, v2

    move v0, v1

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    move v3, v1

    move v1, v2

    .line 271
    :goto_2
    iget-object v4, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v4, :cond_4

    .line 272
    invoke-virtual {v4, v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v0, :cond_5

    .line 275
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v0, :cond_6

    .line 278
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v0, :cond_7

    .line 281
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 283
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureKeysMode(Landroid/content/Context;I)V

    return-void
.end method
