.class public Lcom/color/commons/text/SensitiveWordFilter;
.super Ljava/lang/Object;
.source "SensitiveWordFilter.java"


# static fields
.field public static final MAX_MATCH_TYPE:I = 0x2

.field public static final MIN_MATCH_TYPE:I = 0x1

.field private static mSensitivewordFilter:Lcom/color/commons/text/SensitiveWordFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSensitiveWordMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    .line 22
    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/color/commons/text/SensitiveWordFilter;
    .locals 2

    const-class v0, Lcom/color/commons/text/SensitiveWordFilter;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/color/commons/text/SensitiveWordFilter;->mSensitivewordFilter:Lcom/color/commons/text/SensitiveWordFilter;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/color/commons/text/SensitiveWordFilter;

    invoke-direct {v1, p0}, Lcom/color/commons/text/SensitiveWordFilter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/color/commons/text/SensitiveWordFilter;->mSensitivewordFilter:Lcom/color/commons/text/SensitiveWordFilter;

    .line 38
    :cond_0
    sget-object p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitivewordFilter:Lcom/color/commons/text/SensitiveWordFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getReplaceChars(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    move-object v0, p1

    :goto_0
    if-ge p0, p2, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public CheckSensitiveWord(Ljava/lang/String;II)I
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/color/commons/text/SensitiveWordInit;

    iget-object v1, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/commons/text/SensitiveWordInit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/commons/text/SensitiveWordInit;->initKeyWord()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    .line 166
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    move v3, v2

    .line 167
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_3

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 169
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_3

    add-int/lit8 v2, v2, 0x1

    const-string v4, "isEnd"

    .line 173
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v1, p3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    move v2, v1

    :goto_1
    const/4 p0, 0x2

    if-lt v2, p0, :cond_6

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :cond_6
    :goto_2
    return v0
.end method

.method public getSensitiveWord(Ljava/lang/String;I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/color/commons/text/SensitiveWordInit;

    iget-object v1, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/commons/text/SensitiveWordInit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/commons/text/SensitiveWordInit;->initKeyWord()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    .line 82
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 85
    invoke-virtual {p0, p1, v1, p2}, Lcom/color/commons/text/SensitiveWordFilter;->CheckSensitiveWord(Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v2, v1

    .line 87
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public initFilter()V
    .locals 2

    .line 43
    new-instance v0, Lcom/color/commons/text/SensitiveWordInit;

    iget-object v1, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/commons/text/SensitiveWordInit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/commons/text/SensitiveWordInit;->initKeyWord()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    return-void
.end method

.method public isContaintSensitiveWord(Ljava/lang/String;I)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/color/commons/text/SensitiveWordInit;

    iget-object v1, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/commons/text/SensitiveWordInit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/commons/text/SensitiveWordInit;->initKeyWord()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 61
    invoke-virtual {p0, p1, v0, p2}, Lcom/color/commons/text/SensitiveWordFilter;->CheckSensitiveWord(Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public replaceSensitiveWord(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/color/commons/text/SensitiveWordInit;

    iget-object v1, p0, Lcom/color/commons/text/SensitiveWordFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/commons/text/SensitiveWordInit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/commons/text/SensitiveWordInit;->initKeyWord()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/color/commons/text/SensitiveWordFilter;->mSensitiveWordMap:Ljava/util/Map;

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/commons/text/SensitiveWordFilter;->getSensitiveWord(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 112
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p3, v1}, Lcom/color/commons/text/SensitiveWordFilter;->getReplaceChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 116
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v2, 0x2a

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 124
    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 125
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method
