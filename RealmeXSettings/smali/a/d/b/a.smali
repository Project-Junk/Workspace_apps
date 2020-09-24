.class public abstract La/d/b/a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements La/f/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/b/a$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/Object;

.field private transient c:La/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, La/d/b/a$a;->a()La/d/b/a$a;

    move-result-object v0

    sput-object v0, La/d/b/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    sget-object v0, La/d/b/a;->b:Ljava/lang/Object;

    invoke-direct {p0, v0}, La/d/b/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, La/d/b/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract a()La/f/a;
.end method

.method public final varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, La/d/b/a;->d()La/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, La/f/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, La/d/b/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()La/f/a;
    .locals 1

    .line 65
    iget-object v0, p0, La/d/b/a;->c:La/f/a;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, La/d/b/a;->a()La/f/a;

    move-result-object v0

    .line 68
    iput-object v0, p0, La/d/b/a;->c:La/f/a;

    :cond_0
    return-object v0
.end method

.method protected d()La/f/a;
    .locals 1

    .line 75
    invoke-virtual {p0}, La/d/b/a;->c()La/f/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, La/d/b;

    invoke-direct {v0}, La/d/b;-><init>()V

    throw v0
.end method

.method public e()La/f/c;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
