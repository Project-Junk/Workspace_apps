.class final Lcom/coloros/settings/feature/storage/apps/usage/a$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/usage/a;

.field private b:Lcom/coloros/settings/feature/storage/apps/usage/b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->m(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->m(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 398
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->m(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 354
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 355
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 356
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v5}, Lcom/coloros/settings/feature/storage/apps/usage/a;->i(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 359
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    const/4 v6, 0x1

    if-nez v5, :cond_1

    move v5, v6

    .line 366
    :cond_1
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v7}, Lcom/coloros/settings/feature/storage/apps/usage/a;->j(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    .line 368
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    :cond_2
    move-wide v10, v8

    :goto_2
    cmp-long v7, v10, v8

    if-nez v7, :cond_5

    .line 375
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-boolean v7, v7, Lcom/coloros/settings/feature/storage/apps/usage/b;->o:Z

    if-eqz v7, :cond_3

    .line 376
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v7}, Lcom/coloros/settings/feature/storage/apps/usage/a;->k(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_3
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v7}, Lcom/coloros/settings/feature/storage/apps/usage/a;->l(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v8, v8, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 380
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v9, v9, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_3

    .line 382
    :cond_4
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Ljava/io/File;Z)J

    move-result-wide v7

    :goto_3
    move-wide v10, v7

    if-le v5, v6, :cond_5

    .line 385
    iget-object v6, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v6}, Lcom/coloros/settings/feature/storage/apps/usage/a;->j(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_5
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v6, v4, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    int-to-long v8, v5

    div-long/2addr v10, v8

    add-long/2addr v6, v10

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$c;->b:Lcom/coloros/settings/feature/storage/apps/usage/b;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    return-void
.end method
