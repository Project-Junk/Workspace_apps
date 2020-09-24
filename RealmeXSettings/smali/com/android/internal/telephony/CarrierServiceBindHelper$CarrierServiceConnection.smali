.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierServiceConnection"
.end annotation


# instance fields
.field private connected:Z

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;)Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->connected:Z

    return p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Connected to carrier app: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 321
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->connected:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnected from carrier app: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 327
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->connected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierServiceConnection[connected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
