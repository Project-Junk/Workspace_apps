.class public Lcom/android/settings/Settings$NotificationAccessSettingsActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationAccessSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 579
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 580
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.securitypermission"

    .line 581
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/Settings$NotificationAccessSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$NotificationAccessSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$NotificationAccessSettingsActivity;->finish()V

    return-void
.end method
