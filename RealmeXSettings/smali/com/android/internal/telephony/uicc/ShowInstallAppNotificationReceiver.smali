.class public Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShowInstallAppNotificationReceiver.java"


# static fields
.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "package_name"

    .line 33
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "package_name"

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->registerPackageInstallReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
