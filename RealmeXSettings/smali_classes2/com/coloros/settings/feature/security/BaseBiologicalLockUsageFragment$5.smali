.class final Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$5;
.super Ljava/lang/Object;
.source "BaseBiologicalLockUsageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$5;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$5;->a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "BaseBiologicalLockUsageFragment"

    const-string v0, "onDismiss"

    .line 196
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$5;->b:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->access$000(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;)Z

    return-void
.end method
