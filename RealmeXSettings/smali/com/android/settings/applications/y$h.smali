.class final Lcom/android/settings/applications/y$h;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/y$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/y;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/y;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/android/settings/applications/y$h;->a:Lcom/android/settings/applications/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 727
    check-cast p1, Lcom/android/settings/applications/y$f;

    check-cast p2, Lcom/android/settings/applications/y$f;

    .line 1729
    iget v0, p1, Lcom/android/settings/applications/y$f;->b:I

    iget v1, p2, Lcom/android/settings/applications/y$f;->b:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    .line 1730
    iget v0, p1, Lcom/android/settings/applications/y$f;->b:I

    iget-object v1, p0, Lcom/android/settings/applications/y$h;->a:Lcom/android/settings/applications/y;

    iget v1, v1, Lcom/android/settings/applications/y;->g:I

    if-ne v0, v1, :cond_0

    return v3

    .line 1731
    :cond_0
    iget v0, p2, Lcom/android/settings/applications/y$f;->b:I

    iget-object v1, p0, Lcom/android/settings/applications/y$h;->a:Lcom/android/settings/applications/y;

    iget v1, v1, Lcom/android/settings/applications/y;->g:I

    if-ne v0, v1, :cond_1

    return v2

    .line 1732
    :cond_1
    iget p1, p1, Lcom/android/settings/applications/y$f;->b:I

    iget p2, p2, Lcom/android/settings/applications/y$f;->b:I

    if-ge p1, p2, :cond_2

    return v3

    :cond_2
    return v2

    .line 1734
    :cond_3
    iget-boolean v0, p1, Lcom/android/settings/applications/y$f;->z:Z

    iget-boolean v1, p2, Lcom/android/settings/applications/y$f;->z:Z

    if-eq v0, v1, :cond_5

    .line 1736
    iget-boolean p1, p1, Lcom/android/settings/applications/y$f;->z:Z

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1738
    :cond_5
    iget-boolean v0, p1, Lcom/android/settings/applications/y$f;->y:Z

    iget-boolean v1, p2, Lcom/android/settings/applications/y$f;->y:Z

    if-eq v0, v1, :cond_7

    .line 1740
    iget-boolean p1, p1, Lcom/android/settings/applications/y$f;->y:Z

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3

    .line 1742
    :cond_7
    iget-wide v0, p1, Lcom/android/settings/applications/y$f;->A:J

    iget-wide v4, p2, Lcom/android/settings/applications/y$f;->A:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 1745
    iget-wide v0, p1, Lcom/android/settings/applications/y$f;->A:J

    iget-wide p1, p2, Lcom/android/settings/applications/y$f;->A:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_8

    return v3

    :cond_8
    return v2

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
