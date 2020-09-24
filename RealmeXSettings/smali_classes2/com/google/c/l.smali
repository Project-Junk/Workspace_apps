.class public final Lcom/google/c/l;
.super Lcom/google/c/n;
.source "NotFoundException.java"


# static fields
.field private static final a:Lcom/google/c/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/c/l;

    invoke-direct {v0}, Lcom/google/c/l;-><init>()V

    sput-object v0, Lcom/google/c/l;->a:Lcom/google/c/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/c/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/l;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/c/l;->a:Lcom/google/c/l;

    return-object v0
.end method
