.class Lcom/android/internal/telephony/NewNitzStateMachine$1;
.super Ljava/lang/Object;
.source "NewNitzStateMachine.java"

# interfaces
.implements Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/NewNitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/NewTimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NewNitzStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NewNitzStateMachine;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine$1;->this$0:Lcom/android/internal/telephony/NewNitzStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeZoneDetectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine$1;->this$0:Lcom/android/internal/telephony/NewNitzStateMachine;

    invoke-static {p1}, Lcom/android/internal/telephony/NewNitzStateMachine;->access$000(Lcom/android/internal/telephony/NewNitzStateMachine;)V

    :cond_0
    return-void
.end method
