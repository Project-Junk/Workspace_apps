.class public abstract Lcom/google/c/b/i;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static a:Lcom/google/c/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/c/b/f;

    invoke-direct {v0}, Lcom/google/c/b/f;-><init>()V

    sput-object v0, Lcom/google/c/b/i;->a:Lcom/google/c/b/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/b/i;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/c/b/i;->a:Lcom/google/c/b/i;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/c/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/c/b/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/c/b/b;IILcom/google/c/b/k;)Lcom/google/c/b/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation
.end method
