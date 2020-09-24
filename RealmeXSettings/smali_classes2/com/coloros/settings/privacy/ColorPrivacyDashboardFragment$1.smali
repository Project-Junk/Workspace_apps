.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;
.super Landroid/os/AsyncTask;
.source "ColorPrivacyDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1262
    iget-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->b(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)I

    move-result p1

    .line 1263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 244
    check-cast p1, Ljava/lang/Integer;

    .line 1250
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V

    :cond_0
    return-void
.end method
