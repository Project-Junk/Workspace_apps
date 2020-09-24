.class final Lcom/coloros/settings/feature/storage/a$a;
.super Ljava/lang/Object;
.source "ColorStorageCategorySizeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/a;I)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/a$a;->a:Lcom/coloros/settings/feature/storage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/coloros/settings/feature/storage/a$a;->b:I

    return-void
.end method

.method private synthetic a(J)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a$a;->a:Lcom/coloros/settings/feature/storage/a;

    iget v1, p0, Lcom/coloros/settings/feature/storage/a$a;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/coloros/settings/feature/storage/a;->a(Lcom/coloros/settings/feature/storage/a;IJ)V

    return-void
.end method

.method public static synthetic lambda$uwjqmR20oGoK5vKFSBeNK7LxaRc(Lcom/coloros/settings/feature/storage/a$a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/a$a;->a(J)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/a$a;->a:Lcom/coloros/settings/feature/storage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/a;->a(Lcom/coloros/settings/feature/storage/a;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/storage/a$a;->b:I

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v0

    .line 284
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/a$a;->a:Lcom/coloros/settings/feature/storage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/a;->b(Lcom/coloros/settings/feature/storage/a;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/storage/-$$Lambda$a$a$uwjqmR20oGoK5vKFSBeNK7LxaRc;

    invoke-direct {v3, p0, v0, v1}, Lcom/coloros/settings/feature/storage/-$$Lambda$a$a$uwjqmR20oGoK5vKFSBeNK7LxaRc;-><init>(Lcom/coloros/settings/feature/storage/a$a;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
