.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$EW82qeHp3SOJ3Ox2CznFFuGc_Jk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$11;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$EW82qeHp3SOJ3Ox2CznFFuGc_Jk;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$EW82qeHp3SOJ3Ox2CznFFuGc_Jk;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->lambda$onAuthenticationSucceeded$1$KeyguardUpdateMonitor$11()V

    return-void
.end method
