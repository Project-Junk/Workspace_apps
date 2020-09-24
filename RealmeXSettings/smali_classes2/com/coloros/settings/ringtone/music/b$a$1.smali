.class final Lcom/coloros/settings/ringtone/music/b$a$1;
.super Ljava/lang/Object;
.source "LoadMusicData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/music/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/coloros/settings/ringtone/music/b$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/b$a;Ljava/util/ArrayList;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->b:Lcom/coloros/settings/ringtone/music/b$a;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->b:Lcom/coloros/settings/ringtone/music/b$a;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/b$a;->a(Lcom/coloros/settings/ringtone/music/b$a;)Lcom/coloros/settings/ringtone/music/b;

    move-result-object v0

    .line 1030
    iget-boolean v0, v0, Lcom/coloros/settings/ringtone/music/b;->a:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->b:Lcom/coloros/settings/ringtone/music/b$a;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/b$a;->a(Lcom/coloros/settings/ringtone/music/b$a;)Lcom/coloros/settings/ringtone/music/b;

    move-result-object v0

    .line 2030
    iget-object v0, v0, Lcom/coloros/settings/ringtone/music/b;->e:Lcom/coloros/settings/ringtone/music/b$b;

    .line 122
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->b:Lcom/coloros/settings/ringtone/music/b$a;

    invoke-static {v2}, Lcom/coloros/settings/ringtone/music/b$a;->a(Lcom/coloros/settings/ringtone/music/b$a;)Lcom/coloros/settings/ringtone/music/b;

    move-result-object v2

    .line 3030
    iget v2, v2, Lcom/coloros/settings/ringtone/music/b;->b:I

    .line 122
    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->b:Lcom/coloros/settings/ringtone/music/b$a;

    invoke-static {v3}, Lcom/coloros/settings/ringtone/music/b$a;->b(Lcom/coloros/settings/ringtone/music/b$a;)Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/b$a$1;->b:Lcom/coloros/settings/ringtone/music/b$a;

    invoke-static {v3}, Lcom/coloros/settings/ringtone/music/b$a;->a(Lcom/coloros/settings/ringtone/music/b$a;)Lcom/coloros/settings/ringtone/music/b;

    move-result-object v3

    .line 4030
    iget-object v3, v3, Lcom/coloros/settings/ringtone/music/b;->g:Ljava/util/HashMap;

    .line 122
    invoke-interface {v0, v1, v2, v3}, Lcom/coloros/settings/ringtone/music/b$b;->a(Ljava/util/ArrayList;ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method
