.class final Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "RadioConfig.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RadioConfig;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RadioConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    const-string v0, "serviceDied"

    .line 86
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->access$000(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig$ServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/RadioConfig;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
