.class public Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;
.super Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;
.source "NavBarBackupRestoreProxy.java"


# static fields
.field private static final NAV_STATE:Ljava/lang/String; = "navigate_mode"

.field private static final SWIPE_SIDE_GESTURE_BACK_VIBRATE_ENABLE:Ljava/lang/String; = "gesture_side_back_vibrate_enable"

.field private static final SWIPE_SIDE_GESTURE_HAS_FEATURE:Ljava/lang/String; = "has_feature_gesture_side"

.field private static final SWIPE_SIDE_GESTURE_HIDE_BAR_ENABLE:Ljava/lang/String; = "hide_gesture_side_bar_enable"

.field private static final SWIPE_SIDE_GESTURE_MISTOUCH_PREVENTION_ENABLE:Ljava/lang/String; = "mistouch_prevetion_side_enable"

.field private static final SWIPE_SIDE_GESTURE_SWITCH_APP_ENABLE:Ljava/lang/String; = "gesture_mistouch_switch_app_enable"

.field private static final SWIPE_UP_GESTURE_BAR_SUSPEND_ENABLE:Ljava/lang/String; = "gesture_bar_suspend_enable"

.field private static final SWIPE_UP_GESTURE_BAR_TYPE:Ljava/lang/String; = "hide_gesture_bar_enable"

.field private static final SWIPE_UP_GESTURE_KEYS_MODE:Ljava/lang/String; = "navigate_gesture_mode"

.field private static final SWIPE_UP_GESTURE_MISTOUCH_PREVENTION_ENABLE:Ljava/lang/String; = "mistouch_prevetion_enable"

.field private static final SWIPE_UP__FOLLOW_SCREEN_ROTATION:Ljava/lang/String; = "gesture_up_follow_screen_rotation"

.field private static final VIRTUAL_KEY_COMBINATION_TYPE:Ljava/lang/String; = "navigate_botton_combination"

.field private static final VIRTUAL_KEY_HIDE_ENABLE:Ljava/lang/String; = "navigate_hide_enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadKeys()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "navigate_mode"

    .line 45
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "navigate_botton_combination"

    .line 46
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "navigate_hide_enable"

    .line 47
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "gesture_bar_suspend_enable"

    .line 48
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "navigate_gesture_mode"

    .line 49
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "hide_gesture_bar_enable"

    .line 50
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "mistouch_prevetion_enable"

    .line 51
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "mistouch_prevetion_side_enable"

    .line 52
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "hide_gesture_side_bar_enable"

    .line 53
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "gesture_mistouch_switch_app_enable"

    .line 54
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "gesture_side_back_vibrate_enable"

    .line 55
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "has_feature_gesture_side"

    .line 56
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gesture_up_follow_screen_rotation"

    .line 58
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method protected onBackup(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyCombinationType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getVirtualKeyHideEnable(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureKeysMode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureBarType(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureBarSuspendEnable(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideGestureBarType(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideEnableSwitchApp(Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideEnableBackVibrate(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result v13

    const-string v14, "navigate_gesture_mode"

    const-string v15, "navigate_mode"

    move-object/from16 p0, v12

    const/4 v12, 0x3

    if-ne v13, v12, :cond_0

    const/4 v1, 0x2

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "has_feature_gesture_side"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "navigate_botton_combination"

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "navigate_hide_enable"

    .line 90
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hide_gesture_bar_enable"

    .line 91
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gesture_bar_suspend_enable"

    .line 92
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mistouch_prevetion_enable"

    .line 93
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mistouch_prevetion_side_enable"

    .line 94
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hide_gesture_side_bar_enable"

    .line 95
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gesture_mistouch_switch_app_enable"

    .line 96
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gesture_side_back_vibrate_enable"

    .line 97
    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gesture_up_follow_screen_rotation"

    move-object/from16 v2, p0

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onRestore(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "has_feature_gesture_side"

    .line 106
    invoke-virtual {v0, v2, v3}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    const-string v4, "navigate_mode"

    .line 107
    invoke-virtual {v0, v2, v4}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    const-string v5, "navigate_botton_combination"

    .line 108
    invoke-virtual {v0, v2, v5}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    const-string v6, "navigate_hide_enable"

    .line 109
    invoke-virtual {v0, v2, v6}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v6

    const-string v7, "navigate_gesture_mode"

    .line 110
    invoke-virtual {v0, v2, v7}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    const-string v8, "hide_gesture_bar_enable"

    .line 111
    invoke-virtual {v0, v2, v8}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    const-string v9, "gesture_bar_suspend_enable"

    .line 112
    invoke-virtual {v0, v2, v9}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v9

    const-string v10, "mistouch_prevetion_enable"

    .line 113
    invoke-virtual {v0, v2, v10}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    const-string v11, "mistouch_prevetion_side_enable"

    .line 114
    invoke-virtual {v0, v2, v11}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v11

    const-string v12, "hide_gesture_side_bar_enable"

    .line 115
    invoke-virtual {v0, v2, v12}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v12

    const-string v13, "gesture_mistouch_switch_app_enable"

    .line 116
    invoke-virtual {v0, v2, v13}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v13

    const-string v14, "gesture_side_back_vibrate_enable"

    .line 117
    invoke-virtual {v0, v2, v14}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v14

    const-string v15, "gesture_up_follow_screen_rotation"

    .line 118
    invoke-virtual {v0, v2, v15}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;->getSafeIntValue(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v15, -0x1

    if-ne v4, v2, :cond_4

    if-eq v7, v15, :cond_4

    const/4 v15, 0x1

    if-ne v7, v15, :cond_0

    const/4 v15, 0x3

    .line 123
    invoke-static {v1, v15}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v15, 0x3

    .line 125
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpMore()Z

    move-result v16

    if-nez v16, :cond_3

    if-eq v7, v15, :cond_1

    if-nez v7, :cond_3

    .line 128
    :cond_1
    invoke-static {v1, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureKeysMode(Landroid/content/Context;I)V

    .line 129
    invoke-static {v1, v6}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyHideEnable(Landroid/content/Context;I)V

    if-nez v6, :cond_2

    const/4 v4, 0x0

    .line 131
    invoke-static {v1, v4}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    const/4 v4, -0x1

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    .line 134
    invoke-static {v1, v4}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    const/4 v4, -0x1

    const/4 v15, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-static {v1, v7}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureKeysMode(Landroid/content/Context;I)V

    :cond_4
    move v15, v4

    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_5

    const/4 v2, 0x0

    .line 145
    invoke-static {v1, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyCombinationType(Landroid/content/Context;I)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v5, v2, :cond_6

    const/4 v2, 0x1

    .line 147
    invoke-static {v1, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyCombinationType(Landroid/content/Context;I)V

    goto :goto_2

    .line 149
    :cond_6
    invoke-static {v1, v5}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyCombinationType(Landroid/content/Context;I)V

    :cond_7
    :goto_2
    if-eq v9, v4, :cond_8

    .line 153
    invoke-static {v1, v9}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarSuspendEnable(Landroid/content/Context;I)V

    :cond_8
    if-eq v6, v4, :cond_a

    .line 156
    invoke-static {v1, v6}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setVirtualKeyHideEnable(Landroid/content/Context;I)V

    .line 157
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureNavigationDisable()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v6, :cond_9

    const/4 v2, 0x0

    .line 159
    invoke-static {v1, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    .line 161
    invoke-static {v1, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    :cond_a
    :goto_3
    if-eq v10, v4, :cond_b

    .line 166
    invoke-static {v1, v10}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    :cond_b
    if-eq v11, v4, :cond_c

    .line 169
    invoke-static {v1, v11}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureMistouchPreventionEnable(Landroid/content/Context;I)V

    :cond_c
    if-eq v8, v4, :cond_d

    .line 172
    invoke-static {v1, v8}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureBarType(Landroid/content/Context;I)V

    :cond_d
    if-eq v15, v4, :cond_e

    .line 175
    invoke-static {v1, v15}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    :cond_e
    if-eq v12, v4, :cond_f

    .line 178
    invoke-static {v1, v12}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideGestureBarType(Landroid/content/Context;I)V

    :cond_f
    if-eq v13, v4, :cond_10

    .line 181
    invoke-static {v1, v13}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableSwitchApp(Landroid/content/Context;I)V

    :cond_10
    if-eq v14, v4, :cond_11

    .line 184
    invoke-static {v1, v14}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeSideEnableBackVibrate(Landroid/content/Context;I)V

    :cond_11
    if-eq v3, v4, :cond_12

    const/4 v2, 0x1

    if-ne v3, v2, :cond_12

    const/4 v2, 0x3

    .line 190
    invoke-static {v1, v2}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavState(Landroid/content/Context;I)V

    .line 194
    :cond_12
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eq v0, v4, :cond_13

    .line 195
    invoke-static {v1, v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;I)V

    :cond_13
    return-void
.end method
