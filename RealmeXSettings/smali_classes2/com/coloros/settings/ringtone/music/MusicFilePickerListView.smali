.class public Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;
.super Lcom/color/support/widget/ColorListView;
.source "MusicFilePickerListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static f:Landroid/os/Handler;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/coloros/settings/ringtone/music/c;

.field e:Lcom/coloros/settings/ringtone/music/b;

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Lcom/coloros/settings/ringtone/music/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 61
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a:I

    .line 50
    iput v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b:I

    const/4 v1, -0x1

    .line 51
    iput v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c:I

    .line 52
    iput v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->g:I

    .line 53
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->h:Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 62
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->f:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->g:I

    .line 65
    new-instance p2, Lcom/coloros/settings/ringtone/music/b;

    invoke-direct {p2, p1}, Lcom/coloros/settings/ringtone/music/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    .line 66
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1085
    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    invoke-virtual {p0, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1073
    new-instance p1, Lcom/coloros/settings/ringtone/music/c;

    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/coloros/settings/ringtone/music/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    .line 1074
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1075
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    .line 2082
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/music/c;->a()V

    const/4 p2, 0x1

    .line 2084
    iput p2, p1, Lcom/coloros/settings/ringtone/music/c;->c:I

    .line 2085
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/music/c;->notifyDataSetChanged()V

    .line 1076
    invoke-virtual {p0, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 45
    sget-object v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 8251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 8252
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8253
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/ringtone/b;

    if-eqz v1, :cond_0

    .line 8254
    invoke-virtual {v1}, Lcom/coloros/settings/ringtone/b;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/coloros/settings/ringtone/b;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".cue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/coloros/settings/ringtone/b;I)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$2;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;Lcom/coloros/settings/ringtone/b;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;Landroid/net/Uri;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/c;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    return-object p0
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 3

    .line 104
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 110
    :try_start_1
    sget-object v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->f:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$1;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :goto_0
    return p1

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    throw p1
.end method

.method static synthetic c(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)Lcom/coloros/settings/ringtone/music/a;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->k:Lcom/coloros/settings/ringtone/music/a;

    return-object p0
.end method

.method private c(Landroid/net/Uri;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 278
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 6069
    iput-object v0, p1, Lcom/coloros/settings/ringtone/music/c;->d:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "MusicFilePickerListView"

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 7069
    iput-object v0, p1, Lcom/coloros/settings/ringtone/music/c;->d:Ljava/lang/String;

    return-void

    :goto_0
    if-eqz v0, :cond_4

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 8069
    iput-object v1, v0, Lcom/coloros/settings/ringtone/music/c;->d:Ljava/lang/String;

    .line 287
    throw p1
.end method

.method static synthetic d(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a:I

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->b:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    new-instance v2, Lcom/coloros/settings/ringtone/b;

    invoke-direct {v2, v0}, Lcom/coloros/settings/ringtone/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/settings/ringtone/b;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iput-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "msg_handler_picker_button"

    .line 205
    invoke-static {v0, v2}, Lcom/coloros/settings/ringtone/d;->a(ILjava/lang/String;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 4069
    iput-object v2, v0, Lcom/coloros/settings/ringtone/music/c;->d:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    new-instance v2, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$3;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)V

    .line 4132
    iput-object v2, v0, Lcom/coloros/settings/ringtone/music/b;->e:Lcom/coloros/settings/ringtone/music/b$b;

    .line 225
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/ringtone/music/b;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .line 229
    invoke-direct {p0, p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c(Landroid/net/Uri;)V

    .line 230
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    new-instance v0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView$4;-><init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;)V

    .line 5132
    iput-object v0, p2, Lcom/coloros/settings/ringtone/music/b;->e:Lcom/coloros/settings/ringtone/music/b$b;

    .line 247
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->e:Lcom/coloros/settings/ringtone/music/b;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/coloros/settings/ringtone/music/b;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public getSelectFilePath()Lcom/coloros/settings/ringtone/b;
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    .line 2267
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/c;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2274
    iget-object v1, v0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_1

    .line 2278
    iget-object v3, v0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 2279
    iget-object v3, v0, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 2282
    :cond_0
    iget-object v0, v0, Lcom/coloros/settings/ringtone/music/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/b;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    :cond_2
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 153
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/ringtone/b;

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/b;->isFile()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 158
    iget p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c:I

    const/4 p4, 0x0

    const p5, 0x7f120e73

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eq p2, p3, :cond_5

    .line 159
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/b;->length()J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-lez p2, :cond_4

    .line 160
    iget p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->g:I

    const/16 p4, 0x40

    const/4 p5, 0x1

    if-ne p2, p4, :cond_1

    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    invoke-virtual {p2, p3}, Lcom/coloros/settings/ringtone/music/c;->a(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->h:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 161
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    const p4, 0x7f120468

    invoke-static {p2, p4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 162
    iput-boolean p5, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->h:Z

    .line 164
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    invoke-virtual {p2, p3}, Lcom/coloros/settings/ringtone/music/c;->a(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 165
    iget-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    .line 3219
    iget p4, p2, Lcom/coloros/settings/ringtone/music/c;->c:I

    if-eqz p4, :cond_3

    .line 3223
    iget-object p4, p2, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p4

    .line 3224
    iget v0, p2, Lcom/coloros/settings/ringtone/music/c;->c:I

    if-ne v0, p5, :cond_2

    .line 3225
    iget-object v0, p2, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3228
    :cond_2
    iget-object v0, p2, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    xor-int/2addr p4, p5

    invoke-virtual {v0, p3, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3229
    invoke-virtual {p2}, Lcom/coloros/settings/ringtone/music/c;->notifyDataSetChanged()V

    .line 3231
    iget-object p2, p2, Lcom/coloros/settings/ringtone/music/c;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p5}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result p2

    const-string p4, "msg_handler_file_picker_fragment"

    invoke-static {p2, p4}, Lcom/coloros/settings/ringtone/d;->a(ILjava/lang/String;)V

    .line 167
    :cond_3
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    const/16 p2, 0x14

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/b;I)V

    goto :goto_0

    .line 170
    :cond_4
    iput-object p4, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    invoke-static {p1, p5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->d:Lcom/coloros/settings/ringtone/music/c;

    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/music/c;->b()V

    const-string p1, "msg_handler_picker_button"

    .line 173
    invoke-static {p1}, Lcom/coloros/settings/ringtone/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/b;->length()J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-lez p2, :cond_6

    .line 177
    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    const/16 p2, 0x1c

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->a(Lcom/coloros/settings/ringtone/b;I)V

    goto :goto_0

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->j:Landroid/content/Context;

    invoke-static {p1, p5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 181
    iput-object p4, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->i:Ljava/lang/String;

    .line 185
    :cond_7
    :goto_0
    iput p3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->c:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setOnDataChangeListener(Lcom/coloros/settings/ringtone/music/a;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->k:Lcom/coloros/settings/ringtone/music/a;

    return-void
.end method
