.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;->f$1:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    iget-object v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;->f$1:Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->lambda$onAuthenticationError$3$KeyguardUpdateMonitor$12(Ljava/lang/CharSequence;I)V

    return-void
.end method
