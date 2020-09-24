.class final Lcom/coloros/settings/feature/storage/b$a;
.super Lcom/coloros/settings/utils/be;
.source "OtherFileScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/storage/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/b;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/b;Lcom/coloros/settings/feature/storage/b;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    .line 66
    invoke-direct {p0, p2, p3}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 2

    .line 63
    check-cast p2, Lcom/coloros/settings/feature/storage/b;

    const-string v0, "OtherFileScanHelper"

    const-string v1, "handleMessage"

    .line 1071
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1075
    iget p2, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "OtherFileScanHelper"

    const-string v0, "handleMessage MSG_COUNT_ADD_ONE"

    .line 1077
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/coloros/settings/feature/storage/a/a;

    if-eqz p2, :cond_1

    .line 1082
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1091
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {p2}, Lcom/coloros/settings/feature/storage/b;->a(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b;->b(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/b;->c(Lcom/coloros/settings/feature/storage/b;)Lcom/coloros/settings/feature/storage/b$c;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1093
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b;->a(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/b;->c(Lcom/coloros/settings/feature/storage/b;)Lcom/coloros/settings/feature/storage/b$c;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1094
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {p2}, Lcom/coloros/settings/feature/storage/b;->d(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1096
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {p2}, Lcom/coloros/settings/feature/storage/b;->d(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b;->a(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1097
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {p2}, Lcom/coloros/settings/feature/storage/b;->d(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b;->b(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1100
    invoke-static {}, Lcom/coloros/settings/feature/storage/b;->b()[F

    move-result-object p2

    aget p1, p2, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1101
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, " process"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "OtherFileScanHelper"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {p2}, Lcom/coloros/settings/feature/storage/b;->e(Lcom/coloros/settings/feature/storage/b;)Lcom/coloros/settings/feature/storage/b$b;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/b$a;->a:Lcom/coloros/settings/feature/storage/b;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/b;->d(Lcom/coloros/settings/feature/storage/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/coloros/settings/feature/storage/b$b;->scanProgress(ILjava/util/ArrayList;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1094
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
