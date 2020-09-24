.class public final Lcom/google/android/a/b/c;
.super Lcom/google/android/a/b/a;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/a/b/a<",
        "Landroid/net/Uri;",
        "Lcom/google/android/a/b/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/android/a/b/c;


# instance fields
.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 54
    sput-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const/4 v2, 0x1

    const-string v3, "#"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "inbox"

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const/4 v3, 0x3

    const-string v5, "inbox/#"

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sent"

    invoke-virtual {v0, v1, v7, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const-string v5, "sent/#"

    const/4 v7, 0x5

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const/4 v5, 0x6

    const-string v7, "drafts"

    invoke-virtual {v0, v1, v7, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const-string v7, "drafts/#"

    const/4 v8, 0x7

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const/16 v7, 0x8

    const-string v8, "outbox"

    invoke-virtual {v0, v1, v8, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const-string v8, "outbox/#"

    const/16 v9, 0x9

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v8, "conversations"

    const/16 v9, 0xa

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    const-string v8, "conversations/#"

    const/16 v9, 0xb

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    sput-object v0, Lcom/google/android/a/b/c;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/android/a/b/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/android/a/b/c;->b:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/android/a/b/c;->b:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/google/android/a/b/a;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/b/c;->d:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/b/c;->e:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/b/c;->f:Ljava/util/HashSet;

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/google/android/a/b/d;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/google/android/a/b/c;->e:Ljava/util/HashMap;

    .line 2042
    iget-wide v1, p2, Lcom/google/android/a/b/d;->b:J

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final declared-synchronized b()Lcom/google/android/a/b/c;
    .locals 2

    const-class v0, Lcom/google/android/a/b/c;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/google/android/a/b/c;->c:Lcom/google/android/a/b/c;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/google/android/a/b/c;

    invoke-direct {v1}, Lcom/google/android/a/b/c;-><init>()V

    sput-object v1, Lcom/google/android/a/b/c;->c:Lcom/google/android/a/b/c;

    .line 91
    :cond_0
    sget-object v1, Lcom/google/android/a/b/c;->c:Lcom/google/android/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Landroid/net/Uri;Lcom/google/android/a/b/d;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/google/android/a/b/c;->e:Ljava/util/HashMap;

    .line 3038
    iget p2, p2, Lcom/google/android/a/b/d;->a:I

    int-to-long v1, p2

    .line 256
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private c(Landroid/net/Uri;)Lcom/google/android/a/b/d;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/android/a/b/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 165
    invoke-super {p0, p1}, Lcom/google/android/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/d;

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/google/android/a/b/c;->a(Landroid/net/Uri;Lcom/google/android/a/b/d;)V

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/google/android/a/b/c;->b(Landroid/net/Uri;Lcom/google/android/a/b/d;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/a/b/c;->b(Landroid/net/Uri;)Lcom/google/android/a/b/d;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 176
    :try_start_0
    invoke-super {p0}, Lcom/google/android/a/b/a;->a()V

    .line 178
    iget-object v0, p0, Lcom/google/android/a/b/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 179
    iget-object v0, p0, Lcom/google/android/a/b/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 180
    iget-object v0, p0, Lcom/google/android/a/b/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/net/Uri;)Z
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/b/c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/net/Uri;)Lcom/google/android/a/b/d;
    .locals 4

    monitor-enter p0

    .line 134
    :try_start_0
    sget-object v0, Lcom/google/android/a/b/c;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 159
    monitor-exit p0

    return-object v1

    .line 156
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1243
    iget-object p1, p0, Lcom/google/android/a/b/c;->e:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 1245
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1246
    iget-object v2, p0, Lcom/google/android/a/b/c;->f:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1247
    invoke-super {p0, v0}, Lcom/google/android/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/a/b/d;

    if-eqz v2, :cond_0

    .line 1249
    invoke-direct {p0, v0, v2}, Lcom/google/android/a/b/c;->b(Landroid/net/Uri;Lcom/google/android/a/b/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :cond_1
    monitor-exit p0

    return-object v1

    .line 142
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 143
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/a/b/c;->c(Landroid/net/Uri;)Lcom/google/android/a/b/d;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 153
    :pswitch_2
    :try_start_3
    sget-object p1, Lcom/google/android/a/b/c;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1218
    iget-object v0, p0, Lcom/google/android/a/b/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 1220
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1221
    iget-object v2, p0, Lcom/google/android/a/b/c;->f:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1222
    invoke-super {p0, v0}, Lcom/google/android/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/a/b/d;

    if-eqz v2, :cond_2

    .line 1224
    invoke-direct {p0, v0, v2}, Lcom/google/android/a/b/c;->a(Landroid/net/Uri;Lcom/google/android/a/b/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 154
    :cond_3
    monitor-exit p0

    return-object v1

    .line 137
    :pswitch_3
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/android/a/b/c;->c(Landroid/net/Uri;)Lcom/google/android/a/b/d;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 147
    :pswitch_4
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/a/b/c;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
