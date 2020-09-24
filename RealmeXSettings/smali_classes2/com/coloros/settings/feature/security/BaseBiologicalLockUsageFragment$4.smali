.class final Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;
.super Ljava/lang/Object;
.source "BaseBiologicalLockUsageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->enableFingerEncryptFile(ZLcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;->c:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;->a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;

    iput-object p3, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "BaseBiologicalLockUsageFragment"

    const-string p2, "click positive button"

    .line 185
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;->c:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->access$002(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Z)Z

    .line 188
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, -0x1

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->launchFileManagerIntent(Landroidx/fragment/app/Fragment;IZ)V

    .line 189
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$4;->c:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return-void
.end method
