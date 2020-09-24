.class public final Lcom/google/b/n;
.super Lcom/google/b/k;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/google/b/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/h<",
            "Ljava/lang/String;",
            "Lcom/google/b/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/b/k;-><init>()V

    .line 33
    new-instance v0, Lcom/google/b/b/h;

    invoke-direct {v0}, Lcom/google/b/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/b/k;
    .locals 1

    if-nez p0, :cond_0

    .line 126
    sget-object p0, Lcom/google/b/m;->a:Lcom/google/b/m;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/b/q;

    invoke-direct {v0, p0}, Lcom/google/b/q;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/b/k;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {v0, p1}, Lcom/google/b/b/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/b/k;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/b/k;)V
    .locals 1

    if-nez p2, :cond_0

    .line 59
    sget-object p2, Lcom/google/b/m;->a:Lcom/google/b/m;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-static {p2}, Lcom/google/b/n;->a(Ljava/lang/Object;)Lcom/google/b/k;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/b/n;->a(Ljava/lang/String;Lcom/google/b/k;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 210
    instance-of v0, p1, Lcom/google/b/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/b/n;

    iget-object p1, p1, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    iget-object v0, p0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    .line 211
    invoke-virtual {p1, v0}, Lcom/google/b/b/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/b/n;->a:Lcom/google/b/b/h;

    invoke-virtual {v0}, Lcom/google/b/b/h;->hashCode()I

    move-result v0

    return v0
.end method
