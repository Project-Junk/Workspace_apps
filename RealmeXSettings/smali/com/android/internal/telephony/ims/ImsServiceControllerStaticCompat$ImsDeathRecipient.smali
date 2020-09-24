.class Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;
.super Ljava/lang/Object;
.source "ImsServiceControllerStaticCompat.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsDeathRecipient"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->this$0:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    .line 49
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsService("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") died. Restarting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSCStaticCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    return-void
.end method
