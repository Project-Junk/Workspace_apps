.class public Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;
.super Lcom/coloros/systemui/common/settings/BaseSettingsFragment;
.source "NavigationBarSettingsFragment.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;


# static fields
.field public static final KEY_DIVIDER_END:Ljava/lang/String; = "end_divider_key"

.field public static final KEY_GESTURE_SIDE_CAROUSEL:Ljava/lang/String; = "gesture_side_carousel_key"

.field public static final KEY_GESTURE_SIDE_CAROUSEL_PREF:Ljava/lang/String; = "gesture_side_carousel_pref_key"

.field public static final KEY_GESTURE_SIDE_COMPONENT_PREF:Ljava/lang/String; = "gesture_side_component_pref_key"

.field public static final KEY_GESTURE_SIDE_ENABLE_BACK_VIBRATE:Ljava/lang/String; = "gesture_side_enable_back_vibrate"

.field public static final KEY_GESTURE_SIDE_ENABLE_SWITCH_APP:Ljava/lang/String; = "gesture_side_enable_switch_app_key"

.field public static final KEY_GESTURE_SIDE_HIDE_GUIDE_BAR:Ljava/lang/String; = "gesture_side_hide_guide_bar_key"

.field public static final KEY_GESTURE_SIDE_MISTOUCH_PREVENTION:Ljava/lang/String; = "gesture_side_mistouch_prevention_key"

.field public static final KEY_GESTURE_UP_COMBINATION_BOTH_BACK:Ljava/lang/String; = "gesture_up_combination_both_back_key"

.field public static final KEY_GESTURE_UP_COMBINATION_LEFT_BACK:Ljava/lang/String; = "gesture_up_combination_left_back_key"

.field public static final KEY_GESTURE_UP_COMBINATION_ONLY_HOME:Ljava/lang/String; = "gesture_up_combination_only_home_key"

.field public static final KEY_GESTURE_UP_COMBINATION_PREF:Ljava/lang/String; = "gesture_up_combination_pref_key"

.field public static final KEY_GESTURE_UP_COMBINATION_RIGHT_BACK:Ljava/lang/String; = "gesture_up_combination_right_back_key"

.field public static final KEY_GESTURE_UP_COMPONENT_PREF:Ljava/lang/String; = "gesture_up_component_pref_key"

.field public static final KEY_GESTURE_UP_FOLLOW_SCREEN_ROTATION:Ljava/lang/String; = "gesture_up_follow_screen_rotation"

.field public static final KEY_GESTURE_UP_HIDE_GUIDE_BAR:Ljava/lang/String; = "gesture_up_hide_guide_bar_key"

.field public static final KEY_GESTURE_UP_MISTOUCH_PREVENTION:Ljava/lang/String; = "gesture_up_mistouch_prevention_key"

.field public static final KEY_NAV_TYPE_GESTURE_SIDE:Ljava/lang/String; = "nav_type_gesture_side_key"

.field public static final KEY_NAV_TYPE_GESTURE_UP:Ljava/lang/String; = "nav_type_gesture_up_key"

.field public static final KEY_NAV_TYPE_MORE:Ljava/lang/String; = "nav_type_more_key"

.field public static final KEY_NAV_TYPE_PREF:Ljava/lang/String; = "nav_type_pref_key"

.field public static final KEY_NAV_TYPE_VIRTUAL_KEY:Ljava/lang/String; = "nav_type_nav_virtual_key"

.field public static final KEY_SCREEN:Ljava/lang/String; = "nav_bar_screen_pref_key"

.field public static final KEY_SINGLEHAND_ENABLE_KEY:Ljava/lang/String; = "singlehand_enable_switch_app_key"

.field public static final KEY_SINGLEHAND_SCREEN_KEY:Ljava/lang/String; = "singlehand_pref_key"

.field public static final KEY_VIRTUAL_KEY_COMBINATION_ORIGINAL_GESTURE_LEFT:Ljava/lang/String; = "virtual_key_combination_original_gesture_left_key"

.field public static final KEY_VIRTUAL_KEY_COMBINATION_ORIGINAL_GESTURE_RIGHT:Ljava/lang/String; = "virtual_key_combination_original_gesture_right_key"

.field public static final KEY_VIRTUAL_KEY_COMBINATION_PREF:Ljava/lang/String; = "virtual_key_combination_pref_key"

.field public static final KEY_VIRTUAL_KEY_COMBINATION_RECENT_LEFT_OF_HOME:Ljava/lang/String; = "virtual_key_combination_recent_left_key"

.field public static final KEY_VIRTUAL_KEY_COMBINATION_RECENT_RIGHT_OF_HOME:Ljava/lang/String; = "virtual_key_combination_recent_right_key"

.field public static final KEY_VIRTUAL_KEY_COMPONENT_PREF:Ljava/lang/String; = "virtual_key_component_pref_key"

.field public static final KEY_VIRTUAL_KEY_HIDE_VIRTUAL_KEY:Ljava/lang/String; = "virtual_key_hide_virtual_key_key"

.field public static final TAG:Ljava/lang/String; = "NavigationBarSettingsFragment"


# instance fields
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

.field private mGestureSideCarousel:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;

.field private mGestureSideCarouselPref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mGestureSideComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mGestureSideEnableBackVibrate:Lcom/color/support/preference/ColorSwitchPreference;

.field private mGestureSideEnableSwitchApp:Lcom/color/support/preference/ColorSwitchPreference;

.field private mGestureSideHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

.field private mGestureSideMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

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

.field private mNavMoreModePreference:Lcom/color/support/preference/ColorJumpPreference;

.field private mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

.field private mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

.field private mNavTypePref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenEndDivider:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mSingleHandEnableSwitch:Lcom/color/support/preference/ColorSwitchPreference;

.field private mSingleHandScreen:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

.field private mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

.field private mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

.field private mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

.field private mVirtualKeyComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

.field private mVirtualKeyHideVirtualKey:Lcom/color/support/preference/ColorSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mIsDialogShowing:Z

    .line 170
    new-instance v0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment$1;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updatePreferenceView()V

    return-void
.end method

.method private changeGestureSideGroup(Z)V
    .locals 3

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeGestureSideGroup, isVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "gesture_side_component_pref_key"

    const-string v2, "gesture_side_carousel_pref_key"

    if-eqz p1, :cond_3

    .line 768
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 769
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarouselPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 771
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_2

    .line 772
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 774
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarousel:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;

    if-eqz p0, :cond_6

    .line 775
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->startAnimation()V

    goto :goto_0

    .line 778
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 779
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarouselPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 781
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 782
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 784
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarousel:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;

    if-eqz p0, :cond_6

    .line 785
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->stopAnimation()V

    :cond_6
    :goto_0
    return-void
.end method

.method private changeGestureUpGroup(Z)V
    .locals 3

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeGestureUpGroup, isVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "gesture_up_component_pref_key"

    const-string v2, "gesture_up_combination_pref_key"

    if-eqz p1, :cond_3

    .line 796
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 797
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 799
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_2

    .line 800
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 802
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_5

    const-string v0, "gesture_up_combination_only_home_key"

    .line 804
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 805
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-virtual {p1, p0}, Lcom/color/support/preference/ColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 808
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 809
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 811
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 812
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private changePreferenceGroup(I)V
    .locals 3

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePreferenceGroup, navMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 735
    :cond_1
    invoke-direct {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeGestureSideGroup(Z)V

    .line 736
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeGestureUpGroup(Z)V

    .line 737
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeVirtualKeyGroup(Z)V

    goto :goto_0

    .line 740
    :cond_2
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeGestureSideGroup(Z)V

    .line 741
    invoke-direct {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeGestureUpGroup(Z)V

    .line 742
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeVirtualKeyGroup(Z)V

    goto :goto_0

    .line 745
    :cond_3
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeGestureSideGroup(Z)V

    .line 746
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeGestureUpGroup(Z)V

    .line 747
    invoke-direct {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changeVirtualKeyGroup(Z)V

    .line 752
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureNavigationDisable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 753
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "nav_type_pref_key"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 754
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypePref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 757
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "end_divider_key"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_5

    .line 758
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mScreenEndDivider:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private changeVirtualKeyGroup(Z)V
    .locals 3

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeVirtualKeyGroup, isVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "virtual_key_component_pref_key"

    const-string v2, "virtual_key_combination_pref_key"

    if-eqz p1, :cond_4

    .line 823
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 824
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 828
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz p1, :cond_2

    const-string v0, "virtual_key_combination_original_gesture_left_key"

    .line 829
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "virtual_key_combination_original_gesture_right_key"

    .line 830
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 831
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 832
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 835
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 836
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 837
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_6

    .line 838
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 841
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 842
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 844
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 845
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method private initGestureGuideData()V
    .locals 14

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "initGestureGuideData"

    .line 312
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    .line 321
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

    .line 328
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
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

    .line 337
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    const v10, 0x7f1108bd

    const v11, 0x7f080dc6

    new-array v12, v7, [I

    fill-array-data v12, :array_2

    const/4 v13, 0x0

    const-string v9, "gesture_up_combination_right_back_key"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;-><init>(Ljava/lang/String;II[IZ)V

    .line 346
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    const v10, 0x7f1108bc

    const v11, 0x7f080dc6

    new-array v12, v7, [I

    fill-array-data v12, :array_3

    const/4 v13, 0x0

    const-string v9, "gesture_up_combination_left_back_key"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;-><init>(Ljava/lang/String;II[IZ)V

    .line 355
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

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
    .locals 8

    const-string v0, "NavigationBarSettingsFragment"

    const-string v1, "NavBar"

    const-string v2, "initPreferenceView"

    .line 359
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->getNavSettingBackgroundWhite()Z

    move-result v2

    const-string v3, "nav_bar_screen_pref_key"

    .line 364
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v3, "nav_type_pref_key"

    .line 366
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypePref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v3, "nav_type_gesture_side_key"

    .line 367
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorMarkPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    .line 368
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorMarkPreference;->setShowDivider(Z)V

    const-string v3, "nav_type_gesture_up_key"

    .line 369
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorMarkPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    .line 370
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorMarkPreference;->setShowDivider(Z)V

    const-string v3, "nav_type_nav_virtual_key"

    .line 371
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorMarkPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    .line 372
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorMarkPreference;->setShowDivider(Z)V

    const-string v3, "nav_type_more_key"

    .line 374
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorJumpPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavMoreModePreference:Lcom/color/support/preference/ColorJumpPreference;

    .line 375
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavMoreModePreference:Lcom/color/support/preference/ColorJumpPreference;

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorJumpPreference;->setIntent(Landroid/content/Intent;)V

    const-string v3, "singlehand_enable_switch_app_key"

    .line 380
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mSingleHandEnableSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    const-string v5, "singlehand_pref_key"

    .line 381
    invoke-virtual {p0, v5}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mSingleHandScreen:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 382
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 383
    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mSingleHandEnableSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v7, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$2xTZ1HTka-KYgifMNdqFHNNly9g;

    invoke-direct {v7, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$2xTZ1HTka-KYgifMNdqFHNNly9g;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v5, v7}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    .line 392
    :goto_0
    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mSingleHandEnableSwitch:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v5, v3}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mSingleHandScreen:Lcom/color/support/preference/ColorPreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string v3, "gesture_side_carousel_pref_key"

    .line 399
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarouselPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v3, "gesture_side_carousel_key"

    .line 400
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarousel:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;

    const-string v3, "gesture_side_component_pref_key"

    .line 402
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v3, "gesture_side_mistouch_prevention_key"

    .line 403
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    .line 404
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$iPoPOPhXvJ49TmM0aeRITe28TRQ;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$iPoPOPhXvJ49TmM0aeRITe28TRQ;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "gesture_side_hide_guide_bar_key"

    .line 414
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    .line 415
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$gmt8Li0PNo-qOmc8PFckWmsyGz8;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$gmt8Li0PNo-qOmc8PFckWmsyGz8;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 425
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideGestureBarType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    const-string v3, "gesture_side_enable_switch_app_key"

    .line 428
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableSwitchApp:Lcom/color/support/preference/ColorSwitchPreference;

    .line 429
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableSwitchApp:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$jVA_xnp2yHXl9H_LOH8HUjiBN4w;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$jVA_xnp2yHXl9H_LOH8HUjiBN4w;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableSwitchApp:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideEnableSwitchApp(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    const-string v3, "gesture_side_enable_back_vibrate"

    .line 442
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableBackVibrate:Lcom/color/support/preference/ColorSwitchPreference;

    .line 443
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableBackVibrate:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$qmFw9B23qY_j3yv61Rm3LVFDOBM;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$qmFw9B23qY_j3yv61Rm3LVFDOBM;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableBackVibrate:Lcom/color/support/preference/ColorSwitchPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideEnableBackVibrate(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_4
    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 456
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getHapticFeedbackState(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_5

    .line 457
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideEnableBackVibrate:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    :cond_5
    const-string v3, "gesture_up_combination_pref_key"

    .line 461
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 463
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpMore()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v3, :cond_6

    const v5, 0x7f11036d

    .line 464
    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorPreferenceCategory;->setTitle(I)V

    :cond_6
    const-string v3, "gesture_up_combination_both_back_key"

    .line 467
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 468
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v3, v5, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v3, "gesture_up_combination_only_home_key"

    .line 469
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 470
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v3, v5, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v3, "gesture_up_combination_right_back_key"

    .line 471
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 472
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v3, v5, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v3, "gesture_up_combination_left_back_key"

    .line 473
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    .line 474
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    iget-object v5, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureGuideData:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    invoke-virtual {v3, v5, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setData(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;)V

    const-string v3, "gesture_up_component_pref_key"

    .line 476
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v3, "gesture_up_hide_guide_bar_key"

    .line 477
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    .line 478
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$QtB1LJITM95FglZDc3qelFdinjw;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$QtB1LJITM95FglZDc3qelFdinjw;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "gesture_up_mistouch_prevention_key"

    .line 493
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    .line 494
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$0dgySyDUPS__ZO-FqdCJZm9-Gto;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$0dgySyDUPS__ZO-FqdCJZm9-Gto;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "gesture_up_follow_screen_rotation"

    .line 507
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    .line 508
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v5, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$ggmOLGw3qo93kqWixigoBqrAe-k;

    invoke-direct {v5, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$ggmOLGw3qo93kqWixigoBqrAe-k;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v3, v5}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 532
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v3

    if-nez v3, :cond_7

    .line 533
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    .line 537
    :cond_7
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 538
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorMarkPreference;->setVisible(Z)V

    .line 539
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v3, :cond_8

    .line 540
    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorPreferenceCategory;->setVisible(Z)V

    .line 542
    :cond_8
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v3, :cond_a

    .line 543
    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorPreferenceCategory;->setVisible(Z)V

    goto :goto_5

    .line 546
    :cond_9
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavMoreModePreference:Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorJumpPreference;->setVisible(Z)V

    :cond_a
    :goto_5
    const-string v3, "virtual_key_combination_pref_key"

    .line 550
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v3, "virtual_key_combination_recent_left_key"

    .line 551
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const-string v3, "virtual_key_combination_recent_right_key"

    .line 552
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const-string v3, "virtual_key_combination_original_gesture_left_key"

    .line 553
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const-string v3, "virtual_key_combination_original_gesture_right_key"

    .line 554
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    iput-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    .line 556
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setShowDivider(Z)V

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPreferenceView isWhite = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0808a2

    const v1, 0x7f0808a5

    if-eqz v2, :cond_b

    .line 562
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setLeftImageIcon(I)V

    .line 563
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const v5, 0x7f0808b0

    invoke-virtual {v3, v5}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setRightImageIcon(I)V

    .line 564
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const v5, 0x7f0808aa

    invoke-virtual {v3, v5}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    goto :goto_6

    .line 566
    :cond_b
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const v5, 0x7f0808b2

    invoke-virtual {v3, v5}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setRightImageIcon(I)V

    .line 567
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v1}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setLeftImageIcon(I)V

    .line 568
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    const v7, 0x7f0808ac

    invoke-virtual {v3, v7}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    .line 570
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v5}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setLeftImageIcon(I)V

    .line 571
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v1}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setRightImageIcon(I)V

    .line 572
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v7}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    .line 574
    :goto_6
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setContentDescription(Z)V

    .line 575
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setShowDivider(Z)V

    .line 577
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setHideIcon(I)V

    const v3, 0x7f0808ad

    const v5, 0x7f0808af

    if-eqz v2, :cond_c

    .line 579
    iget-object v7, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v7, v3}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    .line 580
    iget-object v7, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v7, v0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setRightImageIcon(I)V

    goto :goto_7

    .line 582
    :cond_c
    iget-object v7, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v7, v5}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    .line 583
    iget-object v7, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v7, v1}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setRightImageIcon(I)V

    .line 585
    :goto_7
    iget-object v7, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v7, v4}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setShowDivider(Z)V

    .line 587
    iget-object v7, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v7, v6}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setHideIcon(I)V

    if-eqz v2, :cond_d

    .line 589
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    .line 590
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setLeftImageIcon(I)V

    goto :goto_8

    .line 592
    :cond_d
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v0, v5}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setMiddleImageIcon(I)V

    .line 593
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setLeftImageIcon(I)V

    .line 595
    :goto_8
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setShowDivider(Z)V

    const-string v0, "virtual_key_component_pref_key"

    .line 598
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyComponentPref:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "virtual_key_hide_virtual_key_key"

    .line 599
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyHideVirtualKey:Lcom/color/support/preference/ColorSwitchPreference;

    .line 600
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyHideVirtualKey:Lcom/color/support/preference/ColorSwitchPreference;

    new-instance v1, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$nS8wvPJgZTCXYYEeL6Y56-AdmEM;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$nS8wvPJgZTCXYYEeL6Y56-AdmEM;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "end_divider_key"

    .line 614
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mScreenEndDivider:Lcom/color/support/preference/ColorPreferenceCategory;

    return-void
.end method

.method public static newInstance()Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;
    .locals 2

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    new-instance v1, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;

    invoke-direct {v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;-><init>()V

    .line 187
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onUpdateGestureSideGroup()V
    .locals 5

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "onUpdateGestureSideGroup"

    .line 651
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 654
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 655
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 656
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->showTalkbackWarningDialog(I)V

    goto :goto_1

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 659
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 660
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 662
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changePreferenceGroup(I)V

    .line 663
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v0

    if-ne v3, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 665
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideGestureBarType(Landroid/content/Context;)I

    move-result v0

    if-ne v3, v0, :cond_3

    move v2, v3

    .line 669
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private onUpdateGestureUpGroup()V
    .locals 4

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "onUpdateGestureUpGroup"

    .line 675
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 678
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 679
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 680
    invoke-direct {p0, v2}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->showTalkbackWarningDialog(I)V

    goto/16 :goto_2

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 683
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 684
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 685
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 686
    invoke-direct {p0, v2}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changePreferenceGroup(I)V

    .line 687
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureKeysMode(Landroid/content/Context;)I

    move-result v0

    .line 688
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setGestureUpCombination(I)V

    .line 689
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 691
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_4

    .line 694
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureBarType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 695
    :goto_1
    iget-object v3, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpHideGuideBar:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 700
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_6

    .line 701
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpFollowScreenRotation:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 703
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz p0, :cond_6

    .line 704
    invoke-virtual {p0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method private onUpdateVirtualKeyGroup()V
    .locals 3

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "onUpdateVirtualKeyGroup"

    .line 712
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 714
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 715
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 716
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyHideEnable(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 717
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyHideVirtualKey:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 718
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyHideVirtualKey:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 723
    :goto_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->changePreferenceGroup(I)V

    .line 724
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyCombinationType(Landroid/content/Context;)I

    move-result v0

    .line 725
    invoke-direct {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setVirtualKeyCombination(I)V

    return-void
.end method

.method private setVirtualKeyCombination(I)V
    .locals 5

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVirtualKeyCombination, combinationType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

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
    move v2, v0

    move v3, v1

    move v1, v2

    goto :goto_2

    :cond_1
    move v3, v0

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    move v3, v2

    move v0, v1

    :goto_1
    move v1, v3

    .line 870
    :goto_2
    iget-object v4, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentLeftOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    if-eqz v4, :cond_4

    .line 871
    invoke-virtual {v4, v0}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setChecked(Z)V

    .line 873
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationRecentRightOfHome:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    if-eqz v0, :cond_5

    .line 874
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setChecked(Z)V

    .line 876
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureLeft:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    if-eqz v0, :cond_6

    .line 877
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setChecked(Z)V

    .line 879
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mVirtualKeyCombinationOriginalGestureRight:Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;

    if-eqz v0, :cond_7

    .line 880
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/navbar/settings/VirtualKeyCombinationPreference;->setChecked(Z)V

    .line 882
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyCombinationType(Landroid/content/Context;I)V

    return-void
.end method

.method private showTalkbackWarningDialog(I)V
    .locals 3

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTalkbackWarningDialog, targetNavMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mIsDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 927
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const p1, 0x7f110572

    goto :goto_0

    :cond_1
    const p1, 0x7f110571

    .line 938
    :goto_0
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 939
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f110570

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 940
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 941
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 942
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    if-eqz v0, :cond_2

    const/16 v1, 0x7f6

    .line 944
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 945
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 946
    sget v2, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v1, v2}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 947
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 949
    :cond_2
    new-instance v0, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$lUmTZg5yNZx4qdUkiv0LJOXE5hU;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$lUmTZg5yNZx4qdUkiv0LJOXE5hU;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 950
    new-instance v0, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$IrT1MopQ5PozrJ3iZNy9kVlEbmU;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$NavigationBarSettingsFragment$IrT1MopQ5PozrJ3iZNy9kVlEbmU;-><init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    .line 951
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mIsDialogShowing:Z

    .line 952
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private stopLockTaskMode()V
    .locals 3

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "stopLockTaskMode"

    .line 957
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getLockTaskModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->setLockTaskModeState(Landroid/content/Context;I)V

    .line 960
    invoke-static {}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->stopLockTaskMode()V

    :cond_0
    return-void
.end method

.method private updateMoreNavModeTips()V
    .locals 2

    .line 636
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 645
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavMoreModePreference:Lcom/color/support/preference/ColorJumpPreference;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorJumpPreference;->setAssignment(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavMoreModePreference:Lcom/color/support/preference/ColorJumpPreference;

    const v1, 0x7f110602

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorJumpPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updatePreferenceView()V
    .locals 4

    .line 618
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreferenceView, navType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "NavigationBarSettingsFragment"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->onUpdateGestureSideGroup()V

    goto :goto_0

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->onUpdateGestureUpGroup()V

    goto :goto_0

    .line 622
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->onUpdateVirtualKeyGroup()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1105ef

    .line 232
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$initPreferenceView$0$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 384
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 385
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "singlehand_enable_switch_app_key"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$initPreferenceView$1$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 405
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 406
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$initPreferenceView$2$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 416
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 417
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureBarType(Landroid/content/Context;I)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureBarType(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$initPreferenceView$3$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 430
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 431
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableSwitchApp(Landroid/content/Context;I)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableSwitchApp(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$initPreferenceView$4$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 444
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 445
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableBackVibrate(Landroid/content/Context;I)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableBackVibrate(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$initPreferenceView$5$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 479
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 480
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

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

    .line 481
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    if-eqz p2, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    goto :goto_1

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    :goto_1
    return v2
.end method

.method public synthetic lambda$initPreferenceView$6$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 495
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 496
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$initPreferenceView$7$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 509
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 510
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 511
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpMistouchPrevention:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setVisible(Z)V

    :cond_0
    const-string p1, "gesture_mistouch_prevention_enable"

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;I)V

    .line 517
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v1}, Lcom/coloros/systemui/navbar/utils/NavBarDataCommon;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 520
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    .line 524
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v1

    .line 523
    invoke-static {p2, p1, v1}, Lcom/coloros/systemui/navbar/utils/NavBarDataCommon;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 525
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    .line 527
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;I)V

    :goto_0
    return v0
.end method

.method public synthetic lambda$initPreferenceView$8$NavigationBarSettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 601
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 602
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 605
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyHideEnable(Landroid/content/Context;I)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 608
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyHideEnable(Landroid/content/Context;I)V

    :goto_0
    return p1
.end method

.method public synthetic lambda$showTalkbackWarningDialog$10$NavigationBarSettingsFragment(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 950
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mIsDialogShowing:Z

    return-void
.end method

.method public synthetic lambda$showTalkbackWarningDialog$9$NavigationBarSettingsFragment(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 949
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mIsDialogShowing:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NavBar"

    const-string v0, "NavigationBarSettingsFragment"

    const-string v1, "onCreate"

    .line 194
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f150009

    .line 196
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->addPreferencesFromResource(I)V

    .line 197
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->initGestureGuideData()V

    .line 198
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->initPreferenceView()V

    .line 199
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updatePreferenceView()V

    .line 200
    invoke-static {}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->getInstance()Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nav_bar"

    invoke-virtual {p1, p0, v1, v0}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->deleteMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "onCreateView"

    .line 205
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "app.intent.action.TALKBACK_SWITCH_CHAGNED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    .line 213
    invoke-super {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onDestroyView()V

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "onDestroyView"

    .line 214
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureSideCarousel:Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/settings/GestureCarouselPreference;->stopAnimation()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onGestureModeChange(Ljava/lang/String;)V
    .locals 5

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureModeChange key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
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

    .line 304
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setGestureUpCombination(I)V

    goto :goto_2

    .line 301
    :cond_2
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setGestureUpCombination(I)V

    goto :goto_2

    .line 298
    :cond_3
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setGestureUpCombination(I)V

    goto :goto_2

    .line 295
    :cond_4
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setGestureUpCombination(I)V

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
    .locals 6

    .line 237
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "NavigationBarSettingsFragment"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "nav_type_gesture_up_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "virtual_key_combination_original_gesture_left_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "nav_type_gesture_side_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "virtual_key_combination_original_gesture_right_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "virtual_key_combination_recent_left_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "nav_type_nav_virtual_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "virtual_key_combination_recent_right_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 287
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 278
    :pswitch_0
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v4, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->onUpdateGestureSideGroup()V

    .line 280
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->stopLockTaskMode()V

    goto :goto_2

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureSideMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p1, v5}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 284
    :goto_2
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updateMoreNavModeTips()V

    return v5

    .line 269
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v5, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->onUpdateGestureUpGroup()V

    .line 271
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->stopLockTaskMode()V

    goto :goto_3

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeGestureUpMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p1, v5}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 275
    :goto_3
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updateMoreNavModeTips()V

    return v5

    .line 261
    :pswitch_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->onUpdateVirtualKeyGroup()V

    goto :goto_4

    .line 264
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mNavTypeVirtualKeyMark:Lcom/color/support/preference/ColorMarkPreference;

    invoke-virtual {p1, v5}, Lcom/color/support/preference/ColorMarkPreference;->setChecked(Z)V

    .line 266
    :goto_4
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updateMoreNavModeTips()V

    return v5

    .line 256
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyCombinationType(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 257
    invoke-direct {p0, v3}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setVirtualKeyCombination(I)V

    :cond_4
    return v5

    .line 251
    :pswitch_4
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyCombinationType(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v4, :cond_5

    .line 252
    invoke-direct {p0, v4}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setVirtualKeyCombination(I)V

    :cond_5
    return v5

    .line 246
    :pswitch_5
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyCombinationType(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v5, :cond_6

    .line 247
    invoke-direct {p0, v5}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setVirtualKeyCombination(I)V

    :cond_6
    return v5

    .line 241
    :pswitch_6
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyCombinationType(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 242
    invoke-direct {p0, v2}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->setVirtualKeyCombination(I)V

    :cond_7
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x789cc324 -> :sswitch_6
        -0x77c05f5a -> :sswitch_5
        -0x2f12ecf9 -> :sswitch_4
        -0x139431a4 -> :sswitch_3
        0x1463e9f6 -> :sswitch_2
        0x47cc5187 -> :sswitch_1
        0x56a86cfa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .line 223
    invoke-super {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onResume()V

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    const-string v2, "onResume"

    .line 224
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updatePreferenceView()V

    .line 227
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->updateMoreNavModeTips()V

    return-void
.end method

.method public setGestureUpCombination(I)V
    .locals 5

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGestureUpCombination, gestureKeysMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "NavigationBarSettingsFragment"

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

    .line 907
    :goto_2
    iget-object v4, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationBothBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v4, :cond_4

    .line 908
    invoke-virtual {v4, v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationOnlyHomeMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v0, :cond_5

    .line 911
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 913
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationLeftBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v0, :cond_6

    .line 914
    invoke-virtual {v0, v2}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 916
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->mGestureUpCombinationRightBackMark:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    if-eqz v0, :cond_7

    .line 917
    invoke-virtual {v0, v3}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->setChecked(Z)V

    .line 919
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureKeysMode(Landroid/content/Context;I)V

    return-void
.end method
