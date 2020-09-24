.class public Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;
.super Lcom/android/settings/slices/c;
.source "BatteryFixSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryTipWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/c<",
        "Lcom/android/settings/fuelgauge/batterytip/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 228
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$3FCU3Af664XbgDDL7ZPMJ6lODUw(Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 233
    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$BatteryTipWorker$3FCU3Af664XbgDDL7ZPMJ6lODUw;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$BatteryTipWorker$3FCU3Af664XbgDDL7ZPMJ6lODUw;-><init>(Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice$BatteryTipWorker;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
