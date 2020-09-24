.class public Lcom/c/a/a/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a/r$c;,
        Lcom/c/a/a/r$b;,
        Lcom/c/a/a/r$a;,
        Lcom/c/a/a/r$d;
    }
.end annotation


# static fields
.field private static a:Lcom/c/a/a/r$d;

.field private static b:Lcom/c/a/a/r$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/c/a/a/s;

    invoke-direct {v0}, Lcom/c/a/a/s;-><init>()V

    sput-object v0, Lcom/c/a/a/r;->a:Lcom/c/a/a/r$d;

    new-instance v0, Lcom/c/a/a/t;

    invoke-direct {v0}, Lcom/c/a/a/t;-><init>()V

    sput-object v0, Lcom/c/a/a/r;->b:Lcom/c/a/a/r$b;

    return-void
.end method

.method static a()Lcom/c/a/a/r$a;
    .locals 1

    sget-object v0, Lcom/c/a/a/r;->b:Lcom/c/a/a/r$b;

    invoke-interface {v0}, Lcom/c/a/a/r$b;->a()Lcom/c/a/a/r$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/c/a/a/r;->a:Lcom/c/a/a/r$d;

    invoke-interface {v0, p0}, Lcom/c/a/a/r$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
