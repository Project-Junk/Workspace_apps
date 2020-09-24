.class public final Lb/a/al;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/am;


# instance fields
.field private final a:Lb/a/aw;


# direct methods
.method public constructor <init>(Lb/a/aw;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/al;->a:Lb/a/aw;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c_()Lb/a/aw;
    .locals 0

    iget-object p0, p0, Lb/a/al;->a:Lb/a/aw;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb/a/al;->c_()Lb/a/aw;

    move-result-object p0

    const-string v0, "New"

    invoke-virtual {p0, v0}, Lb/a/aw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
