.class public final Lb/a/at$c;
.super Lb/a/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/at;->a(Ljava/lang/Object;Lb/a/aw;Lb/a/as;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/h;

.field final synthetic b:Lb/a/at;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/a/a/h;Lb/a/a/h;Lb/a/at;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/at$c;->a:Lb/a/a/h;

    iput-object p3, p0, Lb/a/at$c;->b:Lb/a/at;

    iput-object p4, p0, Lb/a/at$c;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lb/a/a/h$a;-><init>(Lb/a/a/h;)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/h;)Ljava/lang/Object;
    .locals 1

    const-string v0, "affected"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lb/a/at$c;->b:Lb/a/at;

    invoke-virtual {p1}, Lb/a/at;->l()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lb/a/at$c;->c:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lb/a/a/g;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb/a/a/h;

    invoke-virtual {p0, p1}, Lb/a/at$c;->a(Lb/a/a/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
