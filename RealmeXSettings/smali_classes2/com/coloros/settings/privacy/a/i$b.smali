.class public final Lcom/coloros/settings/privacy/a/i$b;
.super Ljava/lang/Object;
.source "RpmbResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/coloros/settings/privacy/a/f;

.field b:Z

.field c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coloros/settings/privacy/a/e;",
            "Lcom/coloros/settings/privacy/a/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/i$b;->a:Lcom/coloros/settings/privacy/a/f;

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a/i$b;->b:Z

    .line 163
    iput v0, p0, Lcom/coloros/settings/privacy/a/i$b;->c:I

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a/i$b;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/privacy/a/i$b;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/privacy/a/i$a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/coloros/settings/privacy/a/i$a;)V
    .locals 2

    .line 1218
    iget-object v0, p1, Lcom/coloros/settings/privacy/a/i$a;->a:Lcom/coloros/settings/privacy/a/e;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/privacy/a/i$b;->d:Ljava/util/HashMap;

    .line 2218
    iget-object v1, p1, Lcom/coloros/settings/privacy/a/i$a;->a:Lcom/coloros/settings/privacy/a/e;

    .line 192
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
