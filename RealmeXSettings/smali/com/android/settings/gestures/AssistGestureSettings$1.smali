.class final Lcom/android/settings/gestures/AssistGestureSettings$1;
.super Lcom/android/settings/search/a;
.source "AssistGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/AssistGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 82
    invoke-static {p1}, Lcom/android/settings/gestures/AssistGestureSettings;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f150020

    .line 75
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    .line 76
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 87
    new-instance v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const-string v1, "gesture_assist_input_summary"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {v0, p1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->isAvailable()Z

    move-result p1

    return p1
.end method
