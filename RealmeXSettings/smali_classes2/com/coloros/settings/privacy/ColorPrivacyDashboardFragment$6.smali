.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$6;
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

    .line 394
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$6;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$6;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/a/b;->b(Landroid/content/Context;)I

    move-result v0

    .line 398
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPrivacyInfoApps() return: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorPrivacyDashboardFragment"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$6;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-static {v1, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V

    return-void
.end method
