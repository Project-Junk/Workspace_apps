.class final Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;
.super Ljava/lang/Object;
.source "PowerWakeUpGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "disable_google_asssist_power_wakeup"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    .line 1213
    iget-object v1, p1, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1218
    iget-object v2, p1, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v2}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    iget-object p1, p1, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a:Lcom/android/internal/app/AssistUtils;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    goto :goto_0

    .line 1235
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const-string v5, "assist_structure_enabled"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v4

    :cond_1
    const-string v2, "search"

    .line 1238
    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 1239
    invoke-virtual {v2, v0}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1245
    new-instance v1, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$5;

    invoke-direct {v1, p1, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$5;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Landroid/content/Intent;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Landroid/view/View;)V

    return-void
.end method
