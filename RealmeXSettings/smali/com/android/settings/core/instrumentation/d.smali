.class public final Lcom/android/settings/core/instrumentation/d;
.super Ljava/lang/Object;
.source "StatsLogWriter.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/String;I)V
    .locals 6

    const/16 v0, 0x61

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 86
    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write(IIIILjava/lang/String;I)I

    return-void
.end method

.method public final varargs a(I[Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 6

    const/16 v0, 0x61

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    .line 40
    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write(IIIILjava/lang/String;I)I

    return-void
.end method

.method public final a(Landroid/content/Context;II)V
    .locals 6

    const/16 v0, 0x61

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p2

    move v3, p3

    .line 30
    invoke-static/range {v0 .. v5}, Landroid/util/StatsLog;->write(IIIILjava/lang/String;I)I

    return-void
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p3

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public final b(Landroid/content/Context;II)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p3

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method
