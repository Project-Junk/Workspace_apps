.class final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "AppButtonsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 848
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 849
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 850
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$2;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method
