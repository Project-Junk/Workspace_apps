.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$9;
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
.field final synthetic a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$9;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$9;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 479
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
