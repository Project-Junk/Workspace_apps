.class public Lcom/a/a/f;
.super Ljava/lang/Object;


# static fields
.field public static c:Lcom/a/a/f;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/f;->a(DD)Lcom/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/a/a/f;->c:Lcom/a/a/f;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/a/a/f;->b:D

    iput-wide p3, p0, Lcom/a/a/f;->a:D

    return-void
.end method

.method public static a(DD)Lcom/a/a/f;
    .locals 1

    new-instance v0, Lcom/a/a/f;

    invoke-static {p0, p1}, Lcom/a/a/c;->a(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/a/a/c;->b(D)D

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/a/f;-><init>(DD)V

    return-object v0
.end method
