.class public final synthetic Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/qrcode/a$a;

.field private final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/a$a;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;->f$0:Lcom/android/settings/wifi/qrcode/a$a;

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;->f$0:Lcom/android/settings/wifi/qrcode/a$a;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/-$$Lambda$a$a$SUdvqh_2jeAFgqec7dnqrQSzm60;->f$1:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/wifi/qrcode/a$a;->lambda$SUdvqh_2jeAFgqec7dnqrQSzm60(Lcom/android/settings/wifi/qrcode/a$a;Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V

    return-void
.end method
