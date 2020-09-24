.class public Lcom/c/a/a/a/w;
.super Lcom/c/a/a/a/k;


# static fields
.field static final a:Lcom/c/a/a/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/c/a/a/a/w;

    invoke-direct {v0}, Lcom/c/a/a/a/w;-><init>()V

    sput-object v0, Lcom/c/a/a/a/w;->a:Lcom/c/a/a/a/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/a/a/l;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/c/a/a/a/l;->a(Lcom/c/a/a/a/w;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[text()]"

    return-object p0
.end method
