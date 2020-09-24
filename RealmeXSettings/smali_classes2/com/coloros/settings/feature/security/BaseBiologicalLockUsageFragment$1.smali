.class final Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$1;
.super Ljava/lang/Object;
.source "BaseBiologicalLockUsageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$1;->a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment$1;->a:Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/BaseBiologicalLockUsageFragment;->highlightPreferenceForce()V

    return-void
.end method
