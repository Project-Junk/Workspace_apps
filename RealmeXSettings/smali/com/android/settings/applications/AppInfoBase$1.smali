.class final Lcom/android/settings/applications/AppInfoBase$1;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppInfoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppInfoBase;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppInfoBase;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase$1;->a:Lcom/android/settings/applications/AppInfoBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 328
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 329
    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase$1;->a:Lcom/android/settings/applications/AppInfoBase;

    iget-boolean p2, p2, Lcom/android/settings/applications/AppInfoBase;->n:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase$1;->a:Lcom/android/settings/applications/AppInfoBase;

    iget-object p2, p2, Lcom/android/settings/applications/AppInfoBase;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase$1;->a:Lcom/android/settings/applications/AppInfoBase;

    iget-object p2, p2, Lcom/android/settings/applications/AppInfoBase;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase$1;->a:Lcom/android/settings/applications/AppInfoBase;

    iget-object p2, p2, Lcom/android/settings/applications/AppInfoBase;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 330
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase$1;->a:Lcom/android/settings/applications/AppInfoBase;

    .line 1322
    invoke-virtual {p1}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finishAndRemoveTask()V

    :cond_1
    return-void
.end method
