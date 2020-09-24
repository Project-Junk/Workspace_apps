.class public Lcom/android/settingslib/core/instrumentation/a;
.super Ljava/lang/Object;
.source "EventLogWriter.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/String;I)V
    .locals 1

    .line 78
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x4

    .line 79
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    if-eqz p1, :cond_0

    const/16 p1, 0x341

    .line 81
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 83
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x356

    .line 84
    invoke-virtual {p2, p1, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 p1, 0x441

    .line 88
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 86
    invoke-virtual {p2, p1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 90
    :cond_1
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final varargs a(I[Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 48
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 50
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 51
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    .line 42
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .locals 0

    .line 34
    new-instance p1, Landroid/metrics/LogMaker;

    invoke-direct {p1, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p3, 0x1

    .line 35
    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x341

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 69
    new-instance p1, Landroid/metrics/LogMaker;

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x4

    .line 70
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public a(Landroid/content/Context;IZ)V
    .locals 0

    .line 64
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public b(Landroid/content/Context;II)V
    .locals 0

    .line 59
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    return-void
.end method
