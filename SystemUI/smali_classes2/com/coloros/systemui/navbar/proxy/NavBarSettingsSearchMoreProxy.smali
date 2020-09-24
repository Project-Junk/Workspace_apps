.class public Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchMoreProxy;
.super Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;
.source "NavBarSettingsSearchMoreProxy.java"


# static fields
.field private static final KEY_GESTURE_UP_HIDE_GUIDE_BAR:Ljava/lang/String; = "gesture_up_hide_guide_bar_key"

.field private static final KEY_GESTURE_UP_MISTOUCH_PREVENTION:Ljava/lang/String; = "gesture_up_mistouch_prevention_key"

.field private static final KEY_NAV_TYPE_GESTURE_UP:Ljava/lang/String; = "nav_type_gesture_up_key"

.field private static final NonSearch:[Ljava/lang/String;

.field private static final TARGET_ACTION:Ljava/lang/String; = "oppo.intent.action.NAVIGATION_BAR_SETTINGS_MORE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gesture_up_combination_pref_key"

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchMoreProxy;->NonSearch:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
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

    .line 68
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    sget-object v0, Lcom/coloros/systemui/navbar/proxy/NavBarSettingsSearchMoreProxy;->NonSearch:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isGestureUpFollowScreenRotation()Z

    move-result v0

    .line 77
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureFollowScreenRotationType(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 79
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "gesture_up_follow_screen_rotation"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureNavigationDisable()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "nav_type_gesture_up_key"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavType(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v3, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    .line 84
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "gesture_up_hide_guide_bar_key"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-ne p1, v3, :cond_3

    move v2, v3

    .line 85
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "gesture_up_mistouch_prevention_key"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getResData(I)Lcom/color/settingslib/provider/ColorSearchIndexableResource;
    .locals 3

    .line 60
    new-instance p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;

    const v0, 0x7f150008

    const/4 v1, 0x0

    const v2, 0x7f080e99

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/color/settingslib/provider/ColorSearchIndexableResource;-><init>(IILjava/lang/String;I)V

    return-object p0
.end method

.method public getScreenTitle()[I
    .locals 0

    const/4 p0, 0x2

    .line 45
    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f1105ef
        0x7f1105ec
    .end array-data
.end method

.method public getTargetAction()Ljava/lang/String;
    .locals 0

    const-string p0, "oppo.intent.action.NAVIGATION_BAR_SETTINGS_MORE"

    return-object p0
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 0

    .line 55
    const-class p0, Lcom/coloros/systemui/navbar/settings/MoreNavigationModeSettingActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnable(Landroid/content/Context;)Z
    .locals 0

    .line 91
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isNavSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
