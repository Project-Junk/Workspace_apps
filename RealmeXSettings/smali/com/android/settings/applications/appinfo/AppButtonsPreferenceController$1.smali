.class final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;
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

    .line 724
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 728
    :goto_0
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_1

    .line 729
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Got broadcast response: Restart status for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppButtonsPrefCtl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->updateForceStopButtonInner(Z)V

    return-void
.end method
