.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->lambda$onAuthenticationSucceeded$1$KeyguardUpdateMonitor$12(I)V

    return-void
.end method
