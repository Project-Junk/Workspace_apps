.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;->f$1:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->lambda$onAuthenticationError$2$KeyguardUpdateMonitor$11(Ljava/lang/CharSequence;)V

    return-void
.end method
