.class public final synthetic Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$nYQ-9wksl5dqaAWVJStQhHShSpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$nYQ-9wksl5dqaAWVJStQhHShSpg;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$nYQ-9wksl5dqaAWVJStQhHShSpg;->f$0:Landroid/util/ArraySet;

    check-cast p1, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->lambda$getAllKeys$0(Landroid/util/ArraySet;Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V

    return-void
.end method
