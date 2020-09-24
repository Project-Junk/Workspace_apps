.class public Lcom/android/settings/gestures/PickupGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "PickupGesturePreferenceController.java"


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_pick_up_video"


# instance fields
.field private final SECURE_KEY:Ljava/lang/String;

.field private mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mPickUpPrefKey:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "doze_pulse_on_pick_up"

    .line 37
    iput-object p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->SECURE_KEY:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    .line 46
    iput-object p2, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    return-void
.end method

.method private getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 2

    .line 55
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const-string v1, "pref_pickup_gesture_suggestion_complete"

    .line 56
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result p1

    if-nez p1, :cond_0

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

    .line 63
    invoke-direct {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_pick_up_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_pick_up"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_pick_up"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method