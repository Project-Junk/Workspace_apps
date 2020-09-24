.class public Lcom/c/a/a/a/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/c/a/a/a/t;


# instance fields
.field private final b:Lcom/c/a/a/a/o;

.field private final c:Lcom/c/a/a/a/k;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/c/a/a/a/t;

    sget-object v1, Lcom/c/a/a/a/z;->a:Lcom/c/a/a/a/z;

    sget-object v2, Lcom/c/a/a/a/aa;->a:Lcom/c/a/a/a/aa;

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/a/t;-><init>(Lcom/c/a/a/a/o;Lcom/c/a/a/a/k;)V

    sput-object v0, Lcom/c/a/a/a/t;->a:Lcom/c/a/a/a/t;

    return-void
.end method

.method constructor <init>(Lcom/c/a/a/a/ac;ZLcom/c/a/a/a/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/c/a/a/a/t;->d:Z

    iget p2, p3, Lcom/c/a/a/a/s;->a:I

    const/4 v0, -0x3

    if-eq p2, v0, :cond_5

    const/16 v1, 0x2a

    if-eq p2, v1, :cond_4

    const/16 v1, 0x2e

    if-eq p2, v1, :cond_2

    const/16 v1, 0x40

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    move-result p2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/c/a/a/a/j;

    iget-object v0, p3, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/c/a/a/a/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/c/a/a/a/ad;

    const-string p2, "after @ in node test"

    const-string v0, "name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/c/a/a/a/ad;

    const-string p2, "at begininning of step"

    const-string v0, "\'.\' or \'*\' or name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    move-result p2

    if-ne p2, v1, :cond_3

    sget-object p2, Lcom/c/a/a/a/q;->a:Lcom/c/a/a/a/q;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/c/a/a/a/s;->b()V

    sget-object p2, Lcom/c/a/a/a/z;->a:Lcom/c/a/a/a/z;

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/c/a/a/a/a;->a:Lcom/c/a/a/a/a;

    :goto_0
    iput-object p2, p0, Lcom/c/a/a/a/t;->b:Lcom/c/a/a/a/o;

    goto :goto_1

    :cond_5
    iget-object p2, p3, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    move-result p2

    const/16 v0, 0x28

    if-ne p2, v0, :cond_6

    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    move-result p2

    const/16 v0, 0x29

    if-ne p2, v0, :cond_6

    sget-object p2, Lcom/c/a/a/a/y;->a:Lcom/c/a/a/a/y;

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/c/a/a/a/ad;

    const-string p2, "after text"

    const-string v0, "()"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p2, Lcom/c/a/a/a/m;

    iget-object v0, p3, Lcom/c/a/a/a/s;->c:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/c/a/a/a/m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    move-result p2

    const/16 v0, 0x5b

    if-ne p2, v0, :cond_9

    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    invoke-static {p1, p3}, Lcom/c/a/a/a/n;->a(Lcom/c/a/a/a/ac;Lcom/c/a/a/a/s;)Lcom/c/a/a/a/k;

    move-result-object p2

    iput-object p2, p0, Lcom/c/a/a/a/t;->c:Lcom/c/a/a/a/k;

    iget p0, p3, Lcom/c/a/a/a/s;->a:I

    const/16 p2, 0x5d

    if-ne p0, p2, :cond_8

    invoke-virtual {p3}, Lcom/c/a/a/a/s;->a()I

    goto :goto_2

    :cond_8
    new-instance p0, Lcom/c/a/a/a/ad;

    const-string p2, "after predicate expression"

    const-string v0, "]"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/c/a/a/a/ad;-><init>(Lcom/c/a/a/a/ac;Ljava/lang/String;Lcom/c/a/a/a/s;Ljava/lang/String;)V

    throw p0

    :cond_9
    sget-object p1, Lcom/c/a/a/a/aa;->a:Lcom/c/a/a/a/aa;

    iput-object p1, p0, Lcom/c/a/a/a/t;->c:Lcom/c/a/a/a/k;

    :goto_2
    return-void
.end method

.method constructor <init>(Lcom/c/a/a/a/o;Lcom/c/a/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/a/a/t;->b:Lcom/c/a/a/a/o;

    iput-object p2, p0, Lcom/c/a/a/a/t;->c:Lcom/c/a/a/a/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/c/a/a/a/t;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/c/a/a/a/t;->d:Z

    return p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/t;->b:Lcom/c/a/a/a/o;

    invoke-virtual {p0}, Lcom/c/a/a/a/o;->a()Z

    move-result p0

    return p0
.end method

.method public c()Lcom/c/a/a/a/o;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/t;->b:Lcom/c/a/a/a/o;

    return-object p0
.end method

.method public d()Lcom/c/a/a/a/k;
    .locals 0

    iget-object p0, p0, Lcom/c/a/a/a/t;->c:Lcom/c/a/a/a/k;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/c/a/a/a/t;->b:Lcom/c/a/a/a/o;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/c/a/a/a/t;->c:Lcom/c/a/a/a/k;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
