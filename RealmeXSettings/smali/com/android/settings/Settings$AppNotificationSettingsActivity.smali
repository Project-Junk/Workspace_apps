.class public Lcom/android/settings/Settings$AppNotificationSettingsActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppNotificationSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 602
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 605
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 607
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "package"

    .line 608
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 610
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    const-string v4, "app_uid"

    .line 613
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :goto_1
    const/4 v5, 0x0

    if-eq v4, v3, :cond_2

    .line 616
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 618
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "uid : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Settings"

    invoke-static {v7, v6}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 622
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x3e7

    if-ne v5, v8, :cond_3

    .line 624
    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v5

    .line 625
    invoke-virtual {v5, v1}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/16 v5, 0x80

    .line 628
    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 627
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 628
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 635
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v7

    .line 637
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const-string v6, "android.provider.extra.CHANNEL_ID"

    if-eqz v0, :cond_6

    .line 650
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v8, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 652
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "com.coloros.notificationmanager.app.detail.channel"

    goto :goto_3

    :cond_6
    const-string p1, "com.coloros.notificationmanager.app.detail"

    .line 655
    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pkg_name"

    .line 658
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_name"

    .line 659
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eq v4, v3, :cond_7

    .line 661
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 666
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->finish()V

    return-void

    .line 638
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/Settings$AppNotificationSettingsActivity;->finish()V

    return-void
.end method
