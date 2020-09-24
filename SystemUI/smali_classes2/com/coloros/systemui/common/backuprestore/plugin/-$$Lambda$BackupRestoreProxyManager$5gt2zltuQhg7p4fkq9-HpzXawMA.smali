.class public final synthetic Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Landroid/util/ArraySet;

.field private final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;->f$0:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;->f$0:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;->f$1:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->lambda$null$2(Landroid/util/ArraySet;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
