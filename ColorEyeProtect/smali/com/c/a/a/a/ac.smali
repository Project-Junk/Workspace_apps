.class public Lcom/c/a/a/a/ac;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/Hashtable;


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/c/a/a/a/ac;->d:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lcom/c/a/a/a/ac;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    :try_start_0
    iput-object p1, p0, Lcom/c/a/a/a/ac;->c:Ljava/lang/String;

    new-instance p1, Lcom/c/a/a/a/s;

    invoke-direct {p1, p2}, Lcom/c/a/a/a/s;-><init>(Ljava/io/Reader;)V

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Lcom/c/a/a/a/s;->a(C)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/c/a/a/a/s;->a(C)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0, v0}, Lcom/c/a/a/a/s;->a(CC)V

    const/16 v0, 0x5f

    invoke-virtual {p1, v0, v0}, Lcom/c/a/a/a/s;->a(CC)V

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_0

    iput-boolean v1, p0, Lcom/c/a/a/a/ac;->b:Z

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move v0, v1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/c/a/a/a/ac;->b:Z

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    new-instance v4, Lcom/c/a/a/a/t;

    invoke-direct {v4, p0, v0, p1}, Lcom/c/a/a/a/t;-><init>(Lcom/c/a/a/a/ac;ZLcom/c/a/a/a/s;)V

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/c/a/a/a/s;->a:I

    if-eq v0, p2, :cond_3

    iget p2, p1, Lcom/c/a/a/a/s;->a:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    new-instance p2, Lcom/c/a/a/a/ad;

    const-string v0, "at end of XPATH expression"

    const-string v1, "end of expression"

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move-result v0

    if-ne v0, p2, :cond_4

    invoke-virtual {p1}, Lcom/c/a/a/a/s;->a()I

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    new-instance v4, Lcom/c/a/a/a/t;

    invoke-direct {v4, p0, v0, p1}, Lcom/c/a/a/a/t;-><init>(Lcom/c/a/a/a/ac;ZLcom/c/a/a/a/s;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/c/a/a/a/ad;

    invoke-direct {p2, p0, p1}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/Exception;)V

    throw p2
.end method

.method private constructor <init>(Z[Lcom/c/a/a/a/t;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/c/a/a/a/ac;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/a/a/a/ac;->c:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/c/a/a/a/ac;
    .locals 3

    sget-object v0, Lcom/c/a/a/a/ac;->d:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/c/a/a/a/ac;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/a/a/ac;

    if-nez v1, :cond_0

    new-instance v1, Lcom/c/a/a/a/ac;

    invoke-direct {v1, p0}, Lcom/c/a/a/a/ac;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/c/a/a/a/ac;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/a/a/t;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/c/a/a/a/ac;->b:Z

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/c/a/a/a/t;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v3}, Lcom/c/a/a/a/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/c/a/a/a/ac;->b:Z

    return p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/c/a/a/a/t;

    invoke-virtual {p0}, Lcom/c/a/a/a/t;->b()Z

    move-result p0

    return p0
.end method

.method public c()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/c/a/a/a/t;

    iget-object v1, p0, Lcom/c/a/a/a/ac;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    new-instance v1, Lcom/c/a/a/a/ac;

    iget-boolean p0, p0, Lcom/c/a/a/a/ac;->b:Z

    invoke-direct {v1, p0, v0}, Lcom/c/a/a/a/ac;-><init>(Z[Lcom/c/a/a/a/t;)V

    return-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/a/a/t;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/a/ac;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/a/a/ac;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/ac;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/c/a/a/a/ac;->c:Ljava/lang/String;

    return-object p0
.end method
