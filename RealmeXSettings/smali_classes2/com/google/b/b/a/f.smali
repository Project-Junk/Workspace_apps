.class public final Lcom/google/b/b/a/f;
.super Lcom/google/b/d/c;
.source "JsonTreeWriter.java"


# static fields
.field private static final f:Ljava/io/Writer;

.field private static final g:Lcom/google/b/q;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/google/b/k;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/b/b/a/f$1;

    invoke-direct {v0}, Lcom/google/b/b/a/f$1;-><init>()V

    sput-object v0, Lcom/google/b/b/a/f;->f:Ljava/io/Writer;

    .line 46
    new-instance v0, Lcom/google/b/q;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/b/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/b/a/f;->g:Lcom/google/b/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/b/b/a/f;->f:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/b/d/c;-><init>(Ljava/io/Writer;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    .line 55
    sget-object v0, Lcom/google/b/m;->a:Lcom/google/b/m;

    iput-object v0, p0, Lcom/google/b/b/a/f;->b:Lcom/google/b/k;

    return-void
.end method

.method private a(Lcom/google/b/k;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1075
    instance-of v0, p1, Lcom/google/b/m;

    if-eqz v0, :cond_0

    .line 1277
    iget-boolean v0, p0, Lcom/google/b/d/c;->e:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/google/b/b/a/f;->f()Lcom/google/b/k;

    move-result-object v0

    check-cast v0, Lcom/google/b/n;

    .line 79
    iget-object v1, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    :cond_1
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iput-object p1, p0, Lcom/google/b/b/a/f;->b:Lcom/google/b/k;

    return-void

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/google/b/b/a/f;->f()Lcom/google/b/k;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/google/b/i;

    if-eqz v1, :cond_4

    .line 87
    check-cast v0, Lcom/google/b/i;

    invoke-virtual {v0, p1}, Lcom/google/b/i;->a(Lcom/google/b/k;)V

    return-void

    .line 89
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private f()Lcom/google/b/k;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/k;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/b/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/b/i;

    invoke-direct {v0}, Lcom/google/b/i;-><init>()V

    .line 96
    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    .line 97
    iget-object v1, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(J)Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/google/b/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Boolean;)Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/b/b/a/f;->e()Lcom/google/b/d/c;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    new-instance v0, Lcom/google/b/q;

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/google/b/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/google/b/b/a/f;->e()Lcom/google/b/d/c;

    move-result-object p1

    return-object p1

    .line 2242
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/d/c;->c:Z

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/b/q;

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/google/b/b/a/f;->f()Lcom/google/b/k;

    move-result-object v0

    .line 137
    instance-of v0, v0, Lcom/google/b/n;

    if-eqz v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    return-object p0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Z)Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/google/b/q;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    return-object p0
.end method

.method public final b()Lcom/google/b/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/google/b/b/a/f;->f()Lcom/google/b/k;

    move-result-object v0

    .line 106
    instance-of v0, v0, Lcom/google/b/i;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/b/b/a/f;->e()Lcom/google/b/d/c;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance v0, Lcom/google/b/q;

    invoke-direct {v0, p1}, Lcom/google/b/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    return-object p0
.end method

.method public final c()Lcom/google/b/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/b/n;

    invoke-direct {v0}, Lcom/google/b/n;-><init>()V

    .line 115
    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    .line 116
    iget-object v1, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    sget-object v1, Lcom/google/b/b/a/f;->g:Lcom/google/b/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lcom/google/b/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/b/b/a/f;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/google/b/b/a/f;->f()Lcom/google/b/k;

    move-result-object v0

    .line 125
    instance-of v0, v0, Lcom/google/b/n;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/b/b/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final e()Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/google/b/m;->a:Lcom/google/b/m;

    invoke-direct {p0, v0}, Lcom/google/b/b/a/f;->a(Lcom/google/b/k;)V

    return-object p0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
