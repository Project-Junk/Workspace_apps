.class public Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchProxy;
.super Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;
.source "NavBarSettingsSearchProxy.java"


# static fields
.field private static final KEY_GESTURE_SIDE_ENABLE_BACK_VIBRATE:Ljava/lang/String; = "gesture_side_enable_back_vibrate"

.field private static final KEY_GESTURE_SIDE_ENABLE_SWITCH_APP:Ljava/lang/String; = "gesture_side_enable_switch_app_key"

.field private static final KEY_GESTURE_SIDE_HIDE_GUIDE_BAR:Ljava/lang/String; = "gesture_side_hide_guide_bar_key"

.field private static final KEY_GESTURE_SIDE_MISTOUCH_PREVENTION:Ljava/lang/String; = "gesture_side_mistouch_prevention_key"

.field private static final KEY_GESTURE_UP_HIDE_GUIDE_BAR:Ljava/lang/String; = "gesture_up_hide_guide_bar_key"

.field private static final KEY_GESTURE_UP_MISTOUCH_PREVENTION:Ljava/lang/String; = "gesture_up_mistouch_prevention_key"

.field private static final KEY_NAV_TYPE_GESTURE_SIDE:Ljava/lang/String; = "nav_type_gesture_side_key"

.field private static final KEY_NAV_TYPE_GESTURE_UP:Ljava/lang/String; = "nav_type_gesture_up_key"

.field private static final KEY_NAV_TYPE_MORE:Ljava/lang/String; = "nav_type_more_key"

.field private static final KEY_NAV_TYPE_VIRTUAL_KEY:Ljava/lang/String; = "nav_type_nav_virtual_key"

.field private static final KEY_VIRTUAL_KEY_HIDE_VIRTUAL_KEY:Ljava/lang/String; = "virtual_key_hide_virtual_key_key"

.field private static final NonSearch:[Ljava/lang/String;

.field private static final TARGET_ACTION:Ljava/lang/String; = "oppo.intent.action.NAVIGATION_BAR_SETTINGS"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nav_type_pref_key"

    const-string v1, "virtual_key_combination_pref_key"

    const-string v2, "gesture_up_combination_pref_key"

    .line 51
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchProxy;->NonSearch:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 84
    sget-object v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchProxy;->NonSearch:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 85
    invoke-interface {p0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v0

    .line 91
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    .line 93
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "gesture_up_follow_screen_rotation"

    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureNavigationDisable()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "nav_type_nav_virtual_key"

    invoke-interface {p0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "nav_type_gesture_side_key"

    invoke-interface {p0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v5

    const-string v6, "nav_type_more_key"

    if-nez v5, :cond_2

    .line 106
    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 108
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "nav_type_gesture_up_key"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v2

    .line 113
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "virtual_key_hide_virtual_key_key"

    invoke-interface {p0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v4, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v2

    .line 114
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "gesture_up_hide_guide_bar_key"

    invoke-interface {p0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    if-ne v0, v4, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v2

    .line 115
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gesture_up_mistouch_prevention_key"

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v3, v4

    goto :goto_6

    :cond_6
    move v3, v2

    .line 116
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "gesture_side_hide_guide_bar_key"

    invoke-interface {p0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    move v3, v4

    goto :goto_7

    :cond_7
    move v3, v2

    .line 117
    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "gesture_side_mistouch_prevention_key"

    invoke-interface {p0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    move v3, v4

    goto :goto_8

    :cond_8
    move v3, v2

    .line 118
    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "gesture_side_enable_switch_app_key"

    invoke-interface {p0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getHapticFeedbackState(Landroid/content/Context;)I

    move-result p1

    if-ne v0, v1, :cond_9

    if-ne p1, v4, :cond_9

    move v2, v4

    .line 121
    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "gesture_side_enable_back_vibrate"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getResData(I)Lcom/color/settingslib/provider/ColorSearchIndexableResource;
    .locals 3

    .line 74
    new-instance p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;

    const v0, 0x7f150009

    const/4 v1, 0x0

    const v2, 0x7f080e99

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/color/settingslib/provider/ColorSearchIndexableResource;-><init>(IILjava/lang/String;I)V

    return-object p0
.end method

.method public getScreenTitle()[I
    .locals 2

    const/4 p0, 0x1

    .line 59
    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, 0x7f1105ef

    aput v1, p0, v0

    return-object p0
.end method

.method public getTargetAction()Ljava/lang/String;
    .locals 0

    const-string p0, "oppo.intent.action.NAVIGATION_BAR_SETTINGS"

    return-object p0
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 0

    .line 69
    const-class p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnable(Landroid/content/Context;)Z
    .locals 0

    .line 129
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isNavSupport()Z

    move-result p0

    return p0
.end method
