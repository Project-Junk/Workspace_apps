.class public Lcom/color/compat/net/NetworkStatsNative;
.super Ljava/lang/Object;
.source "NetworkStatsNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/net/NetworkStatsNative$EntryNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatsNative"


# instance fields
.field private mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;


# direct methods
.method public constructor <init>(Lcom/color/inner/net/NetworkStatsWrapper;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/NetworkStatsWrapper;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValues(ILcom/color/compat/net/NetworkStatsNative$EntryNative;)Lcom/color/compat/net/NetworkStatsNative$EntryNative;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/color/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/color/inner/net/NetworkStatsWrapper;->getValues(ILcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/color/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {p2, p1}, Lcom/color/compat/net/NetworkStatsNative$EntryNative;-><init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkStatsNative"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public size()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/NetworkStatsWrapper;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatsNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
