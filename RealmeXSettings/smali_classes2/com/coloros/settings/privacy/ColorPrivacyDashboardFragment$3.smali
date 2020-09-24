.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$3;
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

    .line 345
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$3;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$3;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/a/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 349
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getEncryptAppCount() return: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorPrivacyDashboardFragment"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$3;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-static {v1, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->c(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V

    return-void
.end method
