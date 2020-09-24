.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;
.super Ljava/lang/Object;
.source "ColorPrivacyDashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    iput p2, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    iget v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;->a:I

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->b(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorPrivacyDashboardFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
