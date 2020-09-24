.class public final Lcom/android/settingslib/net/c;
.super Lcom/android/settingslib/net/d;
.source "NetworkCycleChartData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/c$a;
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/net/c;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settingslib/net/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settingslib/net/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/net/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/settingslib/net/c;->b:Ljava/util/List;

    return-object p1
.end method
