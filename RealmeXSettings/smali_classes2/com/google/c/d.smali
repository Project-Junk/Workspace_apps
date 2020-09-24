.class public final Lcom/google/c/d;
.super Lcom/google/c/n;
.source "ChecksumException.java"


# static fields
.field private static final a:Lcom/google/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/c/d;

    invoke-direct {v0}, Lcom/google/c/d;-><init>()V

    sput-object v0, Lcom/google/c/d;->a:Lcom/google/c/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/c/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/d;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/c/d;->a:Lcom/google/c/d;

    return-object v0
.end method
