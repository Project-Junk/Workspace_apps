.class public Lcom/color/compat/net/NetworkStatsNative$EntryNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/net/NetworkStatsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryNative"
.end annotation


# static fields
.field private static final TAG_Entry:Ljava/lang/String; = "EntryNative"


# instance fields
.field mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;


# direct methods
.method public constructor <init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    return-void
.end method


# virtual methods
.method public getRxBytes()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    invoke-virtual {p0}, Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;->getRxBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "EntryNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    invoke-virtual {p0}, Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;->getTxBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "EntryNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method
