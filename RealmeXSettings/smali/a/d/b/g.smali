.class public abstract La/d/b/g;
.super La/d/b/f;
.source "PropertyReference1.java"

# interfaces
.implements La/f/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, La/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()La/f/a;
    .locals 1

    .line 24
    invoke-static {p0}, La/d/b/i;->a(La/d/b/g;)La/f/f;

    move-result-object v0

    return-object v0
.end method

.method public final i()La/f/f$a;
    .locals 1

    .line 34
    invoke-virtual {p0}, La/d/b/g;->h()La/f/e;

    move-result-object v0

    check-cast v0, La/f/f;

    invoke-interface {v0}, La/f/f;->i()La/f/f$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
