.class final Lcom/coloros/settings/feature/storage/e$1$1;
.super Ljava/lang/Object;
.source "VolumeMeasurement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/e$1;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/e$1;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/e$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/e$1$1;->a:Lcom/coloros/settings/feature/storage/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/e$1$1;->a:Lcom/coloros/settings/feature/storage/e$1;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/e$1$1;->a:Lcom/coloros/settings/feature/storage/e$1;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    .line 1036
    iget-object v1, v1, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    .line 2183
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/storage/e$a;

    .line 2184
    invoke-interface {v2, v1}, Lcom/coloros/settings/feature/storage/e$a;->a(Lcom/coloros/settings/feature/storage/a/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method
