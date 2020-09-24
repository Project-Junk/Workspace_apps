.class public Lcom/android/settings/Settings$NotificationAppListActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationAppListActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 673
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 674
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.notificationmanager"

    const-string v1, "com.coloros.notificationmanager.NotificationCenterActivity"

    .line 675
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/Settings$NotificationAppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$NotificationAppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$NotificationAppListActivity;->finish()V

    return-void
.end method
