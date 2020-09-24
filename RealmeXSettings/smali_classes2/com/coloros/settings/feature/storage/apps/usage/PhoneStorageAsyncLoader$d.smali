.class public final Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;
.super Ljava/lang/Object;
.source "PhoneStorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:J

.field m:J

.field public n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->n:Z

    .line 720
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->o:Z

    .line 721
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->p:Z

    .line 722
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->q:Z

    .line 723
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->r:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 731
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a:J

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()J
    .locals 6

    .line 735
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->c:J

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->k:J

    add-long/2addr v0, v2

    .line 737
    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->d:J

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->k:J

    sub-long/2addr v2, v4

    .line 738
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "storage data diff : "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneStorageAsyncLoader"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 4

    .line 751
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->e:J

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->f:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->g:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->h:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method
