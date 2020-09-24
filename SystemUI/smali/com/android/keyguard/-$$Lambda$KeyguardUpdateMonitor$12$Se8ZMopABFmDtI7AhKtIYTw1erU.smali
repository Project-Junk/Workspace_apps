.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Se8ZMopABFmDtI7AhKtIYTw1erU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Se8ZMopABFmDtI7AhKtIYTw1erU;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Se8ZMopABFmDtI7AhKtIYTw1erU;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->lambda$onAuthenticationFailed$0$KeyguardUpdateMonitor$12()V

    return-void
.end method
