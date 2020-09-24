.class public final Lcom/b/a/a/a$a;
.super Ljava/lang/Object;
.source "Oaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/b/a/a/a/a;

.field public c:Landroid/content/Context;

.field d:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a$a;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/b/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/b/a/a/a$a;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/b/a/a/a$a;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/b/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final a()Lcom/b/a/a/a;
    .locals 7

    .line 223
    iget-object v0, p0, Lcom/b/a/a/a$a;->d:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a$a;->d:Landroid/content/ContentValues;

    .line 226
    :cond_0
    new-instance v0, Lcom/b/a/a/a;

    iget-object v2, p0, Lcom/b/a/a/a$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/b/a/a/a$a;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/b/a/a/a$a;->b:Lcom/b/a/a/a/a;

    iget-object v5, p0, Lcom/b/a/a/a$a;->d:Landroid/content/ContentValues;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/a;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/b/a/a/a/a;Landroid/content/ContentValues;B)V

    return-object v0
.end method
