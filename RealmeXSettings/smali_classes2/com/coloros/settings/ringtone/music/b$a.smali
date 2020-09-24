.class public final Lcom/coloros/settings/ringtone/music/b$a;
.super Ljava/lang/Thread;
.source "LoadMusicData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/music/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/ringtone/music/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/coloros/settings/ringtone/music/b;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/coloros/settings/ringtone/music/b;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/b$a;->a:Landroid/net/Uri;

    .line 95
    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/b$a;->b:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/b$a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/coloros/settings/ringtone/music/b;B)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/ringtone/music/b$a;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/coloros/settings/ringtone/music/b;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/music/b$a;)Lcom/coloros/settings/ringtone/music/b;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/ringtone/music/b$a;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/b$a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/music/b;

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    if-eqz v0, :cond_7

    .line 105
    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/b$a;->a:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1058
    :try_start_0
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "_data"

    const-string v4, "title"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "title ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1059
    iput v8, v0, Lcom/coloros/settings/ringtone/music/b;->b:I

    if-eqz v7, :cond_2

    .line 1060
    iget-boolean v1, v0, Lcom/coloros/settings/ringtone/music/b;->a:Z

    if-eqz v1, :cond_2

    .line 1061
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1062
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1063
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 1065
    new-instance v3, Lcom/coloros/settings/ringtone/b;

    invoke-direct {v3, v1}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/b;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1067
    iget-object v4, v0, Lcom/coloros/settings/ringtone/music/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    iget-object v3, v0, Lcom/coloros/settings/ringtone/music/b;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LoadMusicData"

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 1077
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    .line 2030
    iget-object v0, v0, Lcom/coloros/settings/ringtone/music/b;->f:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    .line 3030
    iget-object v1, v1, Lcom/coloros/settings/ringtone/music/b;->g:Ljava/util/HashMap;

    .line 108
    invoke-static {v0, v1}, Lcom/coloros/settings/ringtone/a;->a(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 109
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v8, v1, :cond_5

    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    .line 4030
    iget-boolean v2, v2, Lcom/coloros/settings/ringtone/music/b;->a:Z

    if-eqz v2, :cond_5

    .line 111
    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/ringtone/b;

    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    .line 5030
    iput v8, v1, Lcom/coloros/settings/ringtone/music/b;->b:I

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 118
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/b$a;->d:Lcom/coloros/settings/ringtone/music/b;

    .line 6030
    iget-object v1, v1, Lcom/coloros/settings/ringtone/music/b;->d:Landroid/os/Handler;

    .line 118
    new-instance v2, Lcom/coloros/settings/ringtone/music/b$a$1;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/ringtone/music/b$a$1;-><init>(Lcom/coloros/settings/ringtone/music/b$a;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :goto_4
    if-eqz v7, :cond_6

    .line 1077
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1080
    :cond_6
    throw v0

    :cond_7
    :goto_5
    return-void
.end method
