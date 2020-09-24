.class public final Lcom/coloros/settings/ringtone/music/b;
.super Ljava/lang/Object;
.source "LoadMusicData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/music/b$b;,
        Lcom/coloros/settings/ringtone/music/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:Landroid/content/Context;

.field d:Landroid/os/Handler;

.field e:Lcom/coloros/settings/ringtone/music/b$b;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/ringtone/b;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/b;->a:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/b;->f:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/b;->g:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/b;->c:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/music/b;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/music/b;->a:Z

    .line 52
    new-instance v0, Lcom/coloros/settings/ringtone/music/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/coloros/settings/ringtone/music/b$a;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/coloros/settings/ringtone/music/b;B)V

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/b$a;->start()V

    return-void
.end method
