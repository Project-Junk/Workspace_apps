.class Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegManagerDeathRecipient"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/content/ComponentName;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkService("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 178
    invoke-static {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method
