.class public Lcom/android/settings/gestures/GesturesSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "GesturesSettingPreferenceController.java"


# static fields
.field private static final FAKE_PREF_KEY:Ljava/lang/String; = "fake_key_only_for_get_available"

.field private static final KEY_GESTURES_SETTINGS:Ljava/lang/String; = "gesture_settings"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/gestures/a;

.field private mGestureControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "gesture_settings"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/a;

    return-void
.end method

.method private static buildAllPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v2, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 71
    invoke-virtual {v2, v4}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    move-result-object v2

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lcom/android/settings/gestures/DoubleTwistPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/PickupGesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    move-result-object v0

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->buildAllPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/a;

    if-nez v2, :cond_2

    .line 53
    invoke-virtual {v3}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
