.class public Lcom/color/commons/text/SensitiveWordInit;
.super Ljava/lang/Object;
.source "SensitiveWordInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensitiveWordInit"


# instance fields
.field mContext:Landroid/content/Context;

.field mInterdictoryWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSensitiveWordMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordInit;->mInterdictoryWords:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordInit;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/color/commons/text/SensitiveWordInit;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/color/commons/text/SensitiveWordsUpdate;->initialize(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/commons/text/SensitiveWordInit;->mInterdictoryWords:Ljava/util/ArrayList;

    return-void
.end method

.method private addSensitiveWordToHashMap(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordInit;->mSensitiveWordMap:Ljava/util/Map;

    .line 63
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 64
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/color/commons/text/SensitiveWordInit;->mSensitiveWordMap:Ljava/util/Map;

    const/4 v2, 0x0

    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "isEnd"

    if-eqz v4, :cond_1

    .line 72
    check-cast v4, Ljava/util/Map;

    goto :goto_1

    .line 74
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v6, "0"

    .line 75
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v1, v4

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v3, "1"

    .line 81
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readSensitiveWord()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/color/commons/text/SensitiveWordInit;->mInterdictoryWords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SensitiveWordInit"

    const-string v1, "Add interdictory_words error!"

    .line 101
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public initKeyWord()Ljava/util/Map;
    .locals 1

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/color/commons/text/SensitiveWordInit;->readSensitiveWord()Ljava/util/Set;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/color/commons/text/SensitiveWordInit;->addSensitiveWordToHashMap(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    iget-object p0, p0, Lcom/color/commons/text/SensitiveWordInit;->mSensitiveWordMap:Ljava/util/Map;

    return-object p0
.end method
