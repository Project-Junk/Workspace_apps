.class public Lcom/android/settings/gestures/GestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/hardware/display/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/settings/gestures/GestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/GestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/GestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->a:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->a:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/GestureSettings;->a:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "GestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1cb

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500a2

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 57
    const-class v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    .line 58
    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->b(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    .line 59
    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->b(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    return-void
.end method
