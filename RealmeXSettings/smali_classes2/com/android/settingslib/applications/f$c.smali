.class public final Lcom/android/settingslib/applications/f$c;
.super Ljava/lang/Object;
.source "StorageStatsSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Lcom/android/settingslib/applications/f$c;->a:J

    .line 78
    iput-wide p3, p0, Lcom/android/settingslib/applications/f$c;->b:J

    .line 79
    iput-wide p5, p0, Lcom/android/settingslib/applications/f$c;->c:J

    .line 80
    iput-wide p7, p0, Lcom/android/settingslib/applications/f$c;->d:J

    .line 81
    iput-wide p9, p0, Lcom/android/settingslib/applications/f$c;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/ExternalStorageStats;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/f$c;->a:J

    .line 91
    invoke-virtual {p1}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/f$c;->b:J

    .line 92
    invoke-virtual {p1}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/f$c;->c:J

    .line 93
    invoke-virtual {p1}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/f$c;->d:J

    .line 94
    invoke-virtual {p1}, Landroid/app/usage/ExternalStorageStats;->getAppBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/f$c;->e:J

    return-void
.end method
