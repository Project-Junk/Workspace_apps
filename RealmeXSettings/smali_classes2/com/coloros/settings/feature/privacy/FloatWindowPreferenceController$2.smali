.class final Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$2;
.super Ljava/lang/Object;
.source "FloatWindowPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$2;->a:Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 83
    :try_start_0
    new-instance p1, Landroid/app/OppoActivityManager;

    invoke-direct {p1}, Landroid/app/OppoActivityManager;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/OppoActivityManager;->setPermissionInterceptEnable(Z)V

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-string p2, "coloros.intent.action.PERMISSION_MONITOR_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.coloros.safecenter"

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object p2, p0, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$2;->a:Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->access$000(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatWindowPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController$2;->a:Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;->access$100(Lcom/coloros/settings/feature/privacy/FloatWindowPreferenceController;)V

    return-void
.end method
