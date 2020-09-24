.class final Lcom/coloros/settings/feature/storage/b$1;
.super Ljava/lang/Object;
.source "OtherFileScanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/feature/storage/b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/b;Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/b$1;->b:Lcom/coloros/settings/feature/storage/b;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 187
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b$1;->b:Lcom/coloros/settings/feature/storage/b;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/storage/b;->b(Ljava/io/File;)V

    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/b$1;->b:Lcom/coloros/settings/feature/storage/b;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/storage/b;->a(Ljava/io/File;)V

    return-void
.end method
