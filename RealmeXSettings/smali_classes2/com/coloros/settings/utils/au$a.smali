.class public final Lcom/coloros/settings/utils/au$a;
.super Ljava/lang/Object;
.source "RomUpdateXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lcom/coloros/settings/utils/au$a;->a:I

    .line 266
    iput p2, p0, Lcom/coloros/settings/utils/au$a;->b:I

    .line 267
    iput-object p3, p0, Lcom/coloros/settings/utils/au$a;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(IILjava/util/Map;B)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/utils/au$a;-><init>(IILjava/util/Map;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 281
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/coloros/settings/utils/au$a;
    .locals 5

    .line 290
    invoke-static {}, Lcom/coloros/settings/utils/aa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/utils/au$a;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    const-string v0, "dump: rom update xml result is null"

    .line 295
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string v0, "dump: ------------------------"

    .line 298
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dump: version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/coloros/settings/utils/au$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/utils/au$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/coloros/settings/utils/au$a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dump: -------- key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 304
    sget-object v3, Lcom/coloros/settings/utils/-$$Lambda$au$a$udY-326rwJT2tYw2NTi89JNJqdg;->INSTANCE:Lcom/coloros/settings/utils/-$$Lambda$au$a$udY-326rwJT2tYw2NTi89JNJqdg;

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 304
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dump: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RomUpdateXml"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$udY-326rwJT2tYw2NTi89JNJqdg(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/utils/au$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$xmDQc2AlziNqisc481DsGVcsmh4(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/au$a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/coloros/settings/utils/au$a;
    .locals 1

    const-string v0, "RomUpdateXml"

    .line 286
    invoke-direct {p0, v0}, Lcom/coloros/settings/utils/au$a;->b(Ljava/lang/String;)Lcom/coloros/settings/utils/au$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/coloros/settings/utils/au$a;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/utils/-$$Lambda$au$a$xmDQc2AlziNqisc481DsGVcsmh4;

    invoke-direct {v1, p1}, Lcom/coloros/settings/utils/-$$Lambda$au$a$xmDQc2AlziNqisc481DsGVcsmh4;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 1083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
