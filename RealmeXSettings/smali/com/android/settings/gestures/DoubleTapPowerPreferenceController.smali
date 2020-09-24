.class public Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "DoubleTapPowerPreferenceController.java"


# static fields
.field static final OFF:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ON:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_double_tap_power_video"


# instance fields
.field private final SECURE_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "camera_double_tap_power_gesture_disabled"

    .line 39
    iput-object p1, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->SECURE_KEY:Ljava/lang/String;

    return-void
.end method

.method private static isGestureAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "com.android.internal.R.bool.config_cameraDoubleTapPowerGestureEnabled"

    .line 52
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    const-string v0, "pref_double_tap_power_suggestion_complete"

    .line 47
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_double_tap_power_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isSliceable()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_double_tap_power"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
