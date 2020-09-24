.class public final synthetic Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/HashMap;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;->f$0:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;

    invoke-static {v0, p0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->lambda$handleBackup$1(Ljava/util/HashMap;Landroid/content/Context;Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V

    return-void
.end method
