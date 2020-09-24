.class final Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;
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

    .line 409
    iput-object p1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    iput p2, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    const-string v1, "key_private_info_protect"

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    const-string v1, ""

    .line 416
    iget v2, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->a:I

    if-lez v2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->b:Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10004d

    iget v3, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->a:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;->a:I

    .line 418
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 417
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 420
    :cond_0
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 423
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
