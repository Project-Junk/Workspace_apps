.class public Landroidx/core/app/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Bundle;

.field b:Z

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/app/PendingIntent;

.field private final f:[Landroidx/core/app/j;

.field private final g:[Landroidx/core/app/j;

.field private h:Z

.field private final i:I


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Landroidx/core/app/g$a;->c:I

    return p0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/g$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/g$a;->e:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public d()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/g$a;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/g$a;->h:Z

    return p0
.end method

.method public f()[Landroidx/core/app/j;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/g$a;->f:[Landroidx/core/app/j;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Landroidx/core/app/g$a;->i:I

    return p0
.end method

.method public h()[Landroidx/core/app/j;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/g$a;->g:[Landroidx/core/app/j;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/g$a;->b:Z

    return p0
.end method
