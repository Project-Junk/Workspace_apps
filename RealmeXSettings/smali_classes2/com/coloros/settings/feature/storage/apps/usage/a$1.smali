.class final Lcom/coloros/settings/feature/storage/apps/usage/a$1;
.super Ljava/lang/Object;
.source "AppStorageUsageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/usage/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/a;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$1;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 588
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/a$1$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/apps/usage/a$1$1;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a$1;)V

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/c;->a(Lcom/coloros/settings/feature/storage/apps/usage/c$a;)V

    .line 604
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$1;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$c;->a:I

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$b;->b:I

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/c;->a(Landroid/content/Context;I)V

    return-void
.end method
