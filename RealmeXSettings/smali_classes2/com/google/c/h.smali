.class public final Lcom/google/c/h;
.super Lcom/google/c/n;
.source "FormatException.java"


# static fields
.field private static final a:Lcom/google/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/c/h;

    invoke-direct {v0}, Lcom/google/c/h;-><init>()V

    sput-object v0, Lcom/google/c/h;->a:Lcom/google/c/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/c/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/h;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/c/h;->a:Lcom/google/c/h;

    return-object v0
.end method
