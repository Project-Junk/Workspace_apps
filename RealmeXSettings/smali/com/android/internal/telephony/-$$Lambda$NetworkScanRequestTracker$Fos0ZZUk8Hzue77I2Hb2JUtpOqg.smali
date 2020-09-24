.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$Fos0ZZUk8Hzue77I2Hb2JUtpOqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$Fos0ZZUk8Hzue77I2Hb2JUtpOqg;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$Fos0ZZUk8Hzue77I2Hb2JUtpOqg;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->lambda$getAllowedMccMncsForLocationRestrictedScan$2(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
