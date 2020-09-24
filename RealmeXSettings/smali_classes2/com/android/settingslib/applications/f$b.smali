.class public final Lcom/android/settingslib/applications/f$b;
.super Ljava/lang/Object;
.source "StorageStatsSource.java"

# interfaces
.implements Lcom/android/settingslib/applications/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/app/usage/StorageStats;


# direct methods
.method public constructor <init>(Landroid/app/usage/StorageStats;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/settingslib/applications/f$b;->a:Landroid/app/usage/StorageStats;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/applications/f$b;->a:Landroid/app/usage/StorageStats;

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/applications/f$b;->a:Landroid/app/usage/StorageStats;

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/applications/f$b;->a:Landroid/app/usage/StorageStats;

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/applications/f$b;->a:Landroid/app/usage/StorageStats;

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settingslib/applications/f$b;->a:Landroid/app/usage/StorageStats;

    invoke-virtual {v2}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
