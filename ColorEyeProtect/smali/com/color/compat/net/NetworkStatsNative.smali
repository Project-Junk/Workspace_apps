.class public Lcom/color/compat/net/NetworkStatsNative;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    invoke-virtual {p0}, Lcom/color/inner/net/NetworkStatsWrapper;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "NetworkStatsNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValues(ILcom/color/compat/net/NetworkStatsNative$EntryNative;)Lcom/color/compat/net/NetworkStatsNative$EntryNative;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/color/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/color/inner/net/NetworkStatsWrapper;->getValues(ILcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    move-result-object p0

    new-instance p1, Lcom/color/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {p1, p0}, Lcom/color/compat/net/NetworkStatsNative$EntryNative;-><init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "NetworkStatsNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public size()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    invoke-virtual {p0}, Lcom/color/inner/net/NetworkStatsWrapper;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "NetworkStatsNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
