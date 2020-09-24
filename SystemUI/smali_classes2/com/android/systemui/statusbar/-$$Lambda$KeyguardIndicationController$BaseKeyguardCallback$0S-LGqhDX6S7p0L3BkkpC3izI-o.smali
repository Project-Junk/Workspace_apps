.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$BaseKeyguardCallback$0S-LGqhDX6S7p0L3BkkpC3izI-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$BaseKeyguardCallback$0S-LGqhDX6S7p0L3BkkpC3izI-o;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$BaseKeyguardCallback$0S-LGqhDX6S7p0L3BkkpC3izI-o;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->lambda$onBiometricRunningStateChanged$0$KeyguardIndicationController$BaseKeyguardCallback()V

    return-void
.end method
