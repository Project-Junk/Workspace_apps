.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "QuickStepContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/QuickStepContract$SystemUiStateFlags;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_INPUT_MONITOR:Ljava/lang/String; = "extra_input_monitor"

.field public static final KEY_EXTRA_SUPPORTS_WINDOW_CORNERS:Ljava/lang/String; = "extra_supports_window_corners"

.field public static final KEY_EXTRA_SYSUI_PROXY:Ljava/lang/String; = "extra_sysui_proxy"

.field public static final KEY_EXTRA_WINDOW_CORNER_RADIUS:Ljava/lang/String; = "extra_window_corner_radius"

.field public static final NAV_BAR_MODE_2BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.twobutton"

.field public static final NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field public static final SYSUI_STATE_A11Y_BUTTON_CLICKABLE:I = 0x10

.field public static final SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE:I = 0x20

.field public static final SYSUI_STATE_BOUNCER_SHOWING:I = 0x8

.field public static final SYSUI_STATE_HOME_DISABLED:I = 0x100

.field public static final SYSUI_STATE_NAV_BAR_HIDDEN:I = 0x2

.field public static final SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED:I = 0x4

.field public static final SYSUI_STATE_OVERVIEW_DISABLED:I = 0x80

.field public static final SYSUI_STATE_SCREEN_PINNING:I = 0x1

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING:I = 0x40

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDpToPixel(F)I
    .locals 1

    .line 136
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getQuickScrubTouchSlopPx()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 132
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getQuickStepDragSlopPx()I
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 124
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 1

    .line 114
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getQuickStepTouchSlopPx()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 128
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "screen_pinned"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const-string v1, "overview_disabled"

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 92
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_2

    const-string v1, "home_disabled"

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 93
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const-string v1, "navbar_hidden"

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 94
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4

    const-string v1, "notif_visible"

    goto :goto_4

    :cond_4
    move-object v1, v2

    .line 95
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_5

    const-string v1, "keygrd_visible"

    goto :goto_5

    :cond_5
    move-object v1, v2

    .line 96
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_6

    const-string v1, "keygrd_occluded"

    goto :goto_6

    :cond_6
    move-object v1, v2

    .line 97
    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_7

    const-string v1, "bouncer_visible"

    goto :goto_7

    :cond_7
    move-object v1, v2

    .line 99
    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    const-string v1, "a11y_click"

    goto :goto_8

    :cond_8
    move-object v1, v2

    .line 100
    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_9

    const-string v2, "a11y_long_click"

    .line 101
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowCornerRadius(Landroid/content/res/Resources;)F
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result p0

    return p0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0xb

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x47

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLegacyMode(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwipeUpMode(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .locals 0

    .line 212
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method
