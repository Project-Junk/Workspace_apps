.class public Lcom/coloros/settings/feature/display/controller/ColorAmbientDisplayNotificationsPreferenceController;
.super Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;
.source "ColorAmbientDisplayNotificationsPreferenceController.java"


# static fields
.field public static final KEY_AMBIENT_DISPLAY_NOTIFICATIONS:Ljava/lang/String; = "ambient_display_notification"

.field private static final TAG:Ljava/lang/String; = "ColorAmbientDisplayNotificationsPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ambient_display_notification"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    const/4 v0, 0x3

    .line 38
    :try_start_0
    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorAmbientDisplayNotificationsPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
