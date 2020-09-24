.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$8;
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

    .line 459
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$8;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$8;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;Landroid/content/Context;)V

    .line 463
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$8;->a:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->c(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    return-void
.end method
