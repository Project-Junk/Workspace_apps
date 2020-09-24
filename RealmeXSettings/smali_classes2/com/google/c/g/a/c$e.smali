.class final Lcom/google/c/g/a/c$e;
.super Lcom/google/c/g/a/c;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/g/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/google/c/g/a/c;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/google/c/g/a/c$e;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .locals 1

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    .line 128
    div-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
