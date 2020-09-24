.class public Lcom/c/a/a/a/q;
.super Lcom/c/a/a/a/o;


# static fields
.field static final a:Lcom/c/a/a/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/c/a/a/a/q;

    invoke-direct {v0}, Lcom/c/a/a/a/q;-><init>()V

    sput-object v0, Lcom/c/a/a/a/q;->a:Lcom/c/a/a/a/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/a/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/a/a/ab;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/c/a/a/a/p;->a(Lcom/c/a/a/a/q;)V

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ".."

    return-object p0
.end method
