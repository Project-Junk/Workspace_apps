.class final Lcom/android/settings/notification/NotificationSettingsBase$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 438
    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 439
    :cond_0
    invoke-static {}, Lcom/android/settings/notification/NotificationSettingsBase;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Package ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") removed. RemovingNotificationSettingsBase."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotifiSettingsBase"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    .line 1431
    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finishAndRemoveTask()V

    :cond_2
    return-void
.end method
