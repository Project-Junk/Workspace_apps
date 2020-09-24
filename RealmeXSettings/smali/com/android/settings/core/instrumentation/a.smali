.class public final Lcom/android/settings/core/instrumentation/a;
.super Lcom/android/settingslib/core/instrumentation/a;
.source "SettingsEventLogWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settingslib/core/instrumentation/a;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "settings_ui"

    const-string v2, "event_logging_enabled"

    .line 68
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/settings/core/instrumentation/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/settings/core/instrumentation/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/a;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/settings/core/instrumentation/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;IZ)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/settings/core/instrumentation/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/a;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public final b(Landroid/content/Context;II)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/android/settings/core/instrumentation/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/a;->b(Landroid/content/Context;II)V

    return-void
.end method
