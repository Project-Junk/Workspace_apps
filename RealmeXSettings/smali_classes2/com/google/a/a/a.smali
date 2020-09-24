.class public abstract Lcom/google/a/a/a;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/a$c;,
        Lcom/google/a/a/a$e;,
        Lcom/google/a/a/a$d;,
        Lcom/google/a/a/a$b;,
        Lcom/google/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/d<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/a/a/a;
    .locals 1

    .line 145
    sget-object v0, Lcom/google/a/a/a$e;->b:Lcom/google/a/a/a$e;

    return-object v0
.end method


# virtual methods
.method public abstract a(C)Z
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/a/a/a;->a(C)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/a/a/a;->a(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/google/a/a/a;
    .locals 1

    .line 372
    new-instance v0, Lcom/google/a/a/a$c;

    invoke-direct {v0, p0}, Lcom/google/a/a/a$c;-><init>(Lcom/google/a/a/a;)V

    return-object v0
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/google/a/a/a;->b()Lcom/google/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 919
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
