.class public interface abstract Lcom/android/internal/telephony/NitzStateMachine;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
    }
.end annotation


# virtual methods
.method public abstract dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract dumpState(Ljava/io/PrintWriter;)V
.end method

.method public abstract getCachedNitzData()Lcom/android/internal/telephony/NitzData;
.end method

.method public abstract getSavedTimeZoneId()Ljava/lang/String;
.end method

.method public abstract handleNetworkAvailable()V
.end method

.method public abstract handleNetworkCountryCodeSet(Z)V
.end method

.method public abstract handleNetworkCountryCodeUnavailable()V
.end method

.method public abstract handleNitzReceived(Landroid/util/TimestampedValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)V"
        }
    .end annotation
.end method
