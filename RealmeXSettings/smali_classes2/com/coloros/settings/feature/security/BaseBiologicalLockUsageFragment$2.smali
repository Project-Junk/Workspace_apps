.class final Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;
.super Ljava/lang/Object;
.source "BaseBiologicalLockUsageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->enableFingerEncryptApp(ZLcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;

.field final synthetic b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;->a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Intent;)V

    .line 143
    iget-object p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->access$002(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Z)Z

    .line 145
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->startActivity(Landroid/content/Intent;)V

    .line 146
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->pushUpTransition()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BaseBiologicalLockUsageFragment"

    const-string p2, "enableFingerEncrypt() : ActivityNotFoundException"

    .line 148
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$2;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-static {p1, v0, v0, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return-void
.end method
