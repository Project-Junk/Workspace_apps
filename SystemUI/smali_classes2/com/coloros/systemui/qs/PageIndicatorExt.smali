.class public Lcom/coloros/systemui/qs/PageIndicatorExt;
.super Ljava/lang/Object;
.source "PageIndicatorExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/PageIndicatorExt$PageIndicatorCallback;
    }
.end annotation


# static fields
.field private static volatile mInstance:Lcom/coloros/systemui/qs/PageIndicatorExt;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/PageIndicatorExt$PageIndicatorCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/PageIndicatorExt;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/qs/PageIndicatorExt;
    .locals 2

    .line 11
    sget-object v0, Lcom/coloros/systemui/qs/PageIndicatorExt;->mInstance:Lcom/coloros/systemui/qs/PageIndicatorExt;

    if-nez v0, :cond_1

    .line 12
    const-class v0, Lcom/coloros/systemui/qs/PageIndicatorExt;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/qs/PageIndicatorExt;->mInstance:Lcom/coloros/systemui/qs/PageIndicatorExt;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/coloros/systemui/qs/PageIndicatorExt;

    invoke-direct {v1}, Lcom/coloros/systemui/qs/PageIndicatorExt;-><init>()V

    sput-object v1, Lcom/coloros/systemui/qs/PageIndicatorExt;->mInstance:Lcom/coloros/systemui/qs/PageIndicatorExt;

    .line 16
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 18
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/qs/PageIndicatorExt;->mInstance:Lcom/coloros/systemui/qs/PageIndicatorExt;

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/coloros/systemui/qs/PageIndicatorExt$PageIndicatorCallback;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/qs/PageIndicatorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallback(Lcom/coloros/systemui/qs/PageIndicatorExt$PageIndicatorCallback;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/systemui/qs/PageIndicatorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNumPages(I)V
    .locals 2

    .line 24
    iget-object p0, p0, Lcom/coloros/systemui/qs/PageIndicatorExt;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/PageIndicatorExt$PageIndicatorCallback;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_1
    invoke-interface {v0, v1}, Lcom/coloros/systemui/qs/PageIndicatorExt$PageIndicatorCallback;->onShowPageIndicator(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
