.class public Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigureNotificationSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 351
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 352
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.coloros.notificationmanager"

    const-string v2, "com.coloros.notificationmanager.NotificationCenterActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;->finish()V

    return-void
.end method
