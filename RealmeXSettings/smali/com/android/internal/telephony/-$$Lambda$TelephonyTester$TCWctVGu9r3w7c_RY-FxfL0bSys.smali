.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$TelephonyTester$TCWctVGu9r3w7c_RY-FxfL0bSys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$TelephonyTester$TCWctVGu9r3w7c_RY-FxfL0bSys;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$TelephonyTester$TCWctVGu9r3w7c_RY-FxfL0bSys;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/Connection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyTester;->lambda$testChangeNumber$0(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method
