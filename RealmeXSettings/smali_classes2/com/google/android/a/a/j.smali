.class public final Lcom/google/android/a/a/j;
.super Ljava/lang/Object;
.source "PduBody.java"


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/android/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/a/a/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    .line 27
    iput-object v0, p0, Lcom/google/android/a/a/j;->b:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lcom/google/android/a/a/j;->c:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/google/android/a/a/j;->d:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/google/android/a/a/j;->e:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/j;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/j;->c:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/j;->d:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/j;->e:Ljava/util/Map;

    return-void
.end method

.method private c(Lcom/google/android/a/a/n;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Lcom/google/android/a/a/n;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/google/android/a/a/j;->b:Ljava/util/Map;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/a/a/n;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 55
    iget-object v0, p0, Lcom/google/android/a/a/j;->c:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/a/a/n;->f()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 62
    iget-object v0, p0, Lcom/google/android/a/a/j;->d:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/a/a/n;->g()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 69
    iget-object v0, p0, Lcom/google/android/a/a/j;->e:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/a/a/n;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/a/a/n;

    return-object p1
.end method

.method public final a(Lcom/google/android/a/a/n;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/a/a/j;->c(Lcom/google/android/a/a/n;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final b(Lcom/google/android/a/a/n;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/a/a/j;->c(Lcom/google/android/a/a/n;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
