.class Lcom/android/internal/telephony/OldNitzStateMachine$1;
.super Ljava/lang/Object;
.source "OldNitzStateMachine.java"

# interfaces
.implements Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/OldNitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/OldTimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OldNitzStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OldNitzStateMachine;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine$1;->this$0:Lcom/android/internal/telephony/OldNitzStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeDetectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine$1;->this$0:Lcom/android/internal/telephony/OldNitzStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/OldNitzStateMachine;->access$000(Lcom/android/internal/telephony/OldNitzStateMachine;)V

    :cond_0
    return-void
.end method

.method public onTimeZoneDetectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine$1;->this$0:Lcom/android/internal/telephony/OldNitzStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/OldNitzStateMachine;->access$100(Lcom/android/internal/telephony/OldNitzStateMachine;)V

    :cond_0
    return-void
.end method
