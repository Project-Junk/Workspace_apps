.class Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel$1;
.super Ljava/lang/Object;
.source "RpmbChannel.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceDied l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RpmbChannel"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->access$002(Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;)Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    return-void
.end method
