.class final Lcom/android/settings/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->a:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p1, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->b(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 187
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->b(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 189
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->a:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$a;

    iget-object v1, p1, Lcom/android/settings/ResetNetworkConfirm;->d:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/ResetNetworkConfirm$a;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/settings/ResetNetworkConfirm;->c:Lcom/android/settings/ResetNetworkConfirm$a;

    .line 190
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->a:Lcom/android/settings/ResetNetworkConfirm;

    iget-object p1, p1, Lcom/android/settings/ResetNetworkConfirm;->c:Lcom/android/settings/ResetNetworkConfirm$a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/settings/ResetNetworkConfirm$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
